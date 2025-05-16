Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA5280309
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747436394; cv=none; b=bMr33qXFuo9ZLMWVaLfSljy0ADtG7FQz+JodJ0ik77vuTTlazxiA3S8kxBL5OJd2Xp0m0G27V7IjIGSWr6hnokbwuOWWSQfKBxjgwOoL33YRZXNbP3AH1aItdrsfEBbTl08vgaF+/F92AQFqBUwoVyj/I1eBC3H/Rsd24f2S9EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747436394; c=relaxed/simple;
	bh=MotafL743vN8MdwTx6TAJBp6OkMPrCsleZ93tVXOhZ4=;
	h=To:Subject:From:Message-Id:Date; b=dkWh9JnJZEJZ9TNR4m0LJ28x2TIMkD/RvuHv1D1OiciHweEoY/wuxaCiEQaUnpn6YuH2Jkx/CZ3FGjl+m1BZCVdT+1OBtuJmE558Et/vNz39r+qQKphs5Uknzh9vEyNTZUzZIi58CBFI7FJ0CuF7U+qiZ8YDIfNe10Tu3ZW17Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCuxIGVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCuxIGVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E34C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747436393;
	bh=MotafL743vN8MdwTx6TAJBp6OkMPrCsleZ93tVXOhZ4=;
	h=To:Subject:From:Date:From;
	b=dCuxIGVO2JIQZ64eE62feDJOn8eH0mmp/aSef26HtU5nsKgj7jCvqPq+4Z6Y5zTsg
	 xf1JU2LORAXg9ggr7cBf4JKLRsR9vgPwuUEJlDzkZwyVwppK5cMbi9nmFbX/Mwi3Qz
	 5AnSCQHL01nzLUd84BQgaThXafKu+ZKKeZYK+5V8wxL/6SsZGiKT8CzcfqoG2DYaum
	 W6tIqt+P67OK8kG0v73u8BUrL2KT9oEpbeRFLdpqLN53UrRDW6yDLKXJeezi7yNiMd
	 ARyrwg9jiGQmo9+hXTDtA/jIPEYxC4U8HdEzbXBliVxE6TO/16muhrQshScgMTKfnh
	 5zgcPD8MG+cgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B5CC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743639357.24432.3928805000079191528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 542f0a85bf15144076b3730fb4c4cedc771770f384b8fb88f06ca46eb7f634d2
Date: Fri, 16 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747436393
