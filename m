Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386D219F101
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739018754; cv=none; b=Ih/gDfqkT2Gp6iUu4sqRngnp+cZjCvLrBjGa7KS2bmw6ewziKGpAeUQS/GvC68Ui6Jtt0ZjumZpnePrUFjsyum+AIVnBMz1kaZrTkR3R0FijppbDco8TBFuoP3Z/2D6vcHX2EjsHQF0Ia3d3XfZpo1J8VR3GPECtN5JTSdgRuKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739018754; c=relaxed/simple;
	bh=9C0QMG1p4hq8roqJMvowmhEg13FB1sU0ASF2g5rQO7U=;
	h=To:Subject:From:Message-Id:Date; b=la7hA1kqgHKBwAsqganGL91MhiTd2Gt8hHt+oBGUbdfh/f5ifbCFEfWlmZWiX946DAK0qXzQqh9eOSHCak6PAuyW+QWztZcgHAB84u/z1rHnDuZw9usw/RALphFgwOSNMd5RrerEHv/2Tg8NlSGxMpPitj8c/4VIPcnopk/hZ+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmvebxzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmvebxzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0B8C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739018753;
	bh=9C0QMG1p4hq8roqJMvowmhEg13FB1sU0ASF2g5rQO7U=;
	h=To:Subject:From:Date:From;
	b=AmvebxzP4WOeg1yIvY/iajQXrp+0df9OZGDKs6z6Ga8teBoqFHqVNFr1A5eSo5gkD
	 ko2plvb9i1x85OqGaTyzMti7WdShYjnaYpGDixUAkvQNSYeB5T4c6QeZYtzVQiUwkd
	 1IUGX0kLNcmquZPwm7AhwfXNq17HXVknfYp7Fjcpq9UAXbcjXxQsqTKD14tSbMWU+Q
	 dwi8cZMCMUAtZ809l03g/+wZIgQoHqeJ84gKu7esF19+IP2muo36wCCJntpALgi4zu
	 PDFoicxWI7gdyipJjg3nuvAHul6pn85/BuomXcB/1gx+hSiYHv0RoTKRMDrmV/qf0A
	 UdpCPOTDgbCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B9C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901875360.6842.9064679119938286979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 570c26294e99dff3165a04786e209128f594e2ab952c97742ef74a38b814879b
Date: Sat, 08 Feb 2025 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739018753
