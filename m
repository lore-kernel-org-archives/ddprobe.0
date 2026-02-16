Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28053318EF8
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771254894; cv=none; b=nvRvlcuL3A/GgxTA/F6mKyEerWAcPHdemyP2TYUFGMRk+JOHc6AoZtg72k2Irf1H+WfcZ+kPKadWlKu+GpbQv06IJzAVBPC1TlwJpxvt+T9Xe9X2eVzYemF5xW6pZfcTr5jz9BnqQCMdVZCr5laQ1HhZAwCOgwhM7pxrLoMg9V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771254894; c=relaxed/simple;
	bh=zOwzahxkif70nyVUNW652BX7f6Hm3cE55HG2HWGtNtc=;
	h=To:Subject:From:Message-Id:Date; b=Ip1+QukCxRAMT1oSnQmEgnzv6LmXGH/3T6Q3E7wqoqTdsRRvYuAm1cBifmVUCnGVDvyWbN9L2mrzk7uCBpIEoQk1CWliSPGx276Ar5NyVJtCzn4KTItfLrBqRMURu3DBg/9miTP+6hoHDDg45Bx/US9tsYX0cStwu6ErnKklTZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkQ1n7A8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkQ1n7A8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFBA8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771254893;
	bh=zOwzahxkif70nyVUNW652BX7f6Hm3cE55HG2HWGtNtc=;
	h=To:Subject:From:Date:From;
	b=PkQ1n7A867cssHWgt172a+JSXywRobU7wMmLXzQ0FkWtD2XHCal4t6ncZMIBpucVv
	 ZGhwYmUWGlrKW0nKc0V9e+DT0vYW6/sMhlhD+4Lbf8toEK+1625vtLg1jg3wgsyj9I
	 ktlBfQy26XRcqxRClDjiSAeReH2+OcbDXcPNr5K6Q6u6S0tump2bLCLFbojBQqqDv5
	 Qf2D47fIu/2YEvaVRw/JoCWYbPYobFyJHlXuSFIGPuVQqAuSOCwxLl3uhaAfDE5p7o
	 AP1V5/A6yKtFjnDlSbPU/cRZbRFgoLSb2mWn/urWn+pyi85ae4r9eD2OMqHwSqh6sG
	 EXqRLSeiLg8Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E351E81A25
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125489363.29293.17770730295324417905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd8baca0072a1c7392331c6714bf3bfeebbd6744f8e421a69e550679a8929076
Date: Mon, 16 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771254893
