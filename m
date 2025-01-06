Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6C1D63EA
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736154954; cv=none; b=cyztepT5D9z0Fr+aHoEWAivMfMrmEi/FTK6gCaUMNlcZ/vKHV+fnMqR/JAUYG9Gp10CHmeGibp0rG24hkPartftRFdhjIe5YQnAJark4oA2jPEn/EnA8oxcSQRzzz/cbFSP6N4F+LtK7HY62N28CnUX0uCznmAs2Jzi9jLJZZDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736154954; c=relaxed/simple;
	bh=PhIC4WMBqK4Jd6b5Wglo+Q5B6hJ6eWjucFSUZXKVr+A=;
	h=To:Subject:From:Message-Id:Date; b=ORQWU6k0VU9rIRpoHkVN5UwG3l7kQXEtbSL+mcSDiJFWSq183+7IiXC8PvXCGteemB7CE07+ht2vbFB8aGgBu5N7ZNIZdc5Iu6TlzoOlYWslOANcNqUQuGq7kSWH5vXPogE9W4KX2/Jo5JGnaIdcnt+4t2p/erJYODdRHU8lyRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gn+o7hB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gn+o7hB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A911BC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736154953;
	bh=PhIC4WMBqK4Jd6b5Wglo+Q5B6hJ6eWjucFSUZXKVr+A=;
	h=To:Subject:From:Date:From;
	b=gn+o7hB3Ag0L5N2BJ5kQx94rpUdScJ8PNoxS9r/jbaEQUSGC17QL5nxnYCVhKrdlN
	 Og+GJRSL7vkNZCjiH6z7+UVhgciCkmpQPkSq4y10tIRN6gpDkRYAA+KGkCmXKgvsfq
	 NPBdnvUSDFLuTgyFXqz7hsE/0FLv4zKZiRAJq2PopgvHMryA8ckPUt/Bhw2RXNmQ1F
	 dGNkf/lxMTiP2DZ6afIv1Md6fl49YnxS014DmHsC2WazctCpzVRQ19FOd7LBoPiAuR
	 vGza4caEweZXQhfsOPSR2xMwarZiCOcs7zWU1iHPYrqm+UHC2tGoIIyiZ5Ac/EloKW
	 QlSmsfxuYB5OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE2E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173615495359.17192.8609165856953877937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0d4735e0f24efae0864cb4e9a822d77cfb078901da8160b2304e4f052bcb9c
Date: Mon, 06 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736154953
