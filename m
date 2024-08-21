Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB4413E40F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724262954; cv=none; b=qY9kygW/L0+AMogSgua7ULcNq/jPMpMpkjq6voWD8hRqa7gkZ4XYv6Rrfq7n+D4NukXsYtB5+BTIhD/7x17KU8JTj4d693LBCzxHFKtq9QwgT+OufHJ7ARmtKnhMFRXTv5BJJXF6BsSxpcQeXmhZ/MTfyezql/hHtCuBVDwjcT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724262954; c=relaxed/simple;
	bh=J0x35CM5Rk0+fwq0pqS/6uxNDADdpiDe7ZVpuOEQ3zI=;
	h=To:Subject:From:Message-Id:Date; b=a8kY7sw9lwrX55wL6g/bERjtR2QDPXYI5rzKqydvATCJ9L0xphDZ+1DXWhxGSMBOIQ5h5boLFl0LZDGp0zp/XtjKl1q91CyCYW7hAk4U66mb49LEJhzj7U4g5o+89OzjyYK00CgN5ZgRE0RvXO+HZhG8TN+BQ0QF2UtibGuc4m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uaTndtuA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uaTndtuA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0318C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724262953;
	bh=J0x35CM5Rk0+fwq0pqS/6uxNDADdpiDe7ZVpuOEQ3zI=;
	h=To:Subject:From:Date:From;
	b=uaTndtuA69aXGHDNLh5ZqIwLI4BKjYYzs2xbFJtpHPhE6YkW6sF5g+QxGOjl1cRNp
	 vvvaN8zlrlpDT6x8WlipIrGN+3/DcJpcz/rZzmE6kyWckdDcr3Hmj9suU3Z2ERmbLn
	 Fbu5jAXvcY6pgP3wwfzsDQQ4kUQi2c6NrDfbaG57QCM8ZyzOGQkRnhu/1anGN4X/U/
	 Q5jSv0xhCAB0Qq1igEixjQDkPUNUAx/zx3jl9phJ1p31BKRuOQaGhwFyHglmvl9QuR
	 v+hZoabRe2Jamn9k4evdMPJyBa8i29ikqbY3OvWQKHHfNv0UuLMReqw5pQ6CkpHgsz
	 5WCZQCk0NQTwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602AC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172426295360.29896.2548446980717819935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bf1b2c55598efe550d441e1e05d44cd2efe0325ca2383e437356fffcf5c63dd
Date: Wed, 21 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724262953
