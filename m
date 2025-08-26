Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1DA321457
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756211395; cv=none; b=Z/uB3CLXvr4vFC4K0kFipBJ+lVGMCY/1LWQ1EIMzzT9lPm/eeujTY/DAYsWadVETAyZ2Zzgt+7VSDOJ4jJLuI+XurCaXfg79dLUjk0ahRzRjhXzhZifTKankcdADPaf/kmzDFta4rETQuk8vuKKsHfpyiQt7tCjuV7XP9pEuXJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756211395; c=relaxed/simple;
	bh=EDYLd/Lp0B+AOLEUuIvMcr76w9N/LH2o2sPmy+7LCwo=;
	h=To:Subject:From:Message-Id:Date; b=o2naxKYkALr1d/yPkZsrhXgJ7JONtOY0yMEX010MmnEzEUUEw+YbcKuQYbVuAGsvtywriyDzm+1CZtTXFALO5sBPFDVdMcP2BCiMYimFzT5jgPrfvhGxWoDu96LI0Zufbc0sOFqyQTenSttQXsPs/S6UMfp6zfTllalNw543Ilo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq0/hhmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq0/hhmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDFC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756211393;
	bh=EDYLd/Lp0B+AOLEUuIvMcr76w9N/LH2o2sPmy+7LCwo=;
	h=To:Subject:From:Date:From;
	b=kq0/hhmCQoiOCNyjEA3cLvT/YMvcuPAcUD98GhdGQceq9vhr6IzoaRMitnZFlkVC0
	 5vGllfa1jZUIqcnqU8qElulyo/iXtASwNGXFjaHm9/CDqS5KcSZ0VHoNAjEwkBYSiA
	 8vxAJIm0b4lV17UH2R+KtlLcT6hhTJ+8dhVvW0RyU/CG9Zv8IZkba3iKzRzyy2AWBJ
	 WP+qRRLpGR+eWFVXIAdyn1x2Fg1LnvhcFHMVrGAwNz51RJzCC4C0F0JcmWpSCmGuq5
	 wagHGU3Sp9fHndDnTHT+cPJMzClYswMUA8gUmrYPpr3njJYzRob8qZrp3fC3ucHRHD
	 9g9A0BYEj82HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F277CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621139357.21512.15862870796498181888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c839e5e60e68122fcd083e20adaed6845664768dda91f8c402de5a1dbc2173
Date: Tue, 26 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756211393
