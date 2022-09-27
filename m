Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA5E1653
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E4D7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664261453;
	bh=byjDpNW3IAHtW0EGBAhyfcuXZyokaBiuxe84tJLFPFI=;
	h=To:Subject:From:Date:From;
	b=hIm5zy6ujLfR5/S5ul+sPMwroJyBgxkkubnXzsS+3KFv59AEQmttYEIkBnbvOsMBg
	 3VkQDxxFJuhAB+FGT9pheucrCXhYAkBu/PRVNxlbQrLxtiYxOU5wpuQdPQG0Xb1oVm
	 rcV1Oq3G1fgM/rIf3SUxFjN40AOtad2vp07IUz5iXBg/bM5xbiRvHqRJAK3zZS4lnk
	 jGtrJEgK4SfuHVpQiJPn328akUGomrtYHJ0n+vVGIzhJMdIpQy1F1vCp69aFAM8SOH
	 GXXuM3xR/UR5mhKyp7XAON/oFRZLtr5joq+0z/3Wg2cSPsy9Q5gzt3ot2C7aVluD14
	 oRtllTDaj7Q2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5276FC07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426145333.7586.9637725105637240683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c586d1e3cb4aa3e5b9c6213103859f9aaa93b3529cd66c3ec3daebb9df2ca3
Date: Tue, 27 Sep 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664261453
