Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E00D883F
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775604934; cv=none; b=H2itoY8iNqMojxGRZoMzJvbqyez8bo2Y8lOIomnPgit3toOEK1D5vecYH59pjHaDxzJ5VAOCOgX9YK75D+olgNGLbBAWN/YVbZlk4r00Zo1mfwe+O4w0dP3nzy3Coi5P9wvxEPkPvnIb976XxSgAZ/XpEWdPRKa0f4wd2gCD44M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775604934; c=relaxed/simple;
	bh=RQJ1/ZGZ7s6XZM9EdUflFHQLKonew3BEKseXg+lw5OM=;
	h=To:Subject:From:Message-Id:Date; b=QiPEM09nToeiy+hxDDu0U1LQmV45nnGcnshAnCWhZy2yxvHhEqcAWMN6q1F/sHC8TEEssm/w8DstNSWDv9riIqa3O0jZcz+PBaAjb1J0m7qV1nHGyxVCU/MlkjoB1FaiFn00QMdhQqyyP2U1+ziJvjAB6//UkgsiTIFcu0lcNpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/B+1Bc4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/B+1Bc4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C01CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775604934;
	bh=RQJ1/ZGZ7s6XZM9EdUflFHQLKonew3BEKseXg+lw5OM=;
	h=To:Subject:From:Date:From;
	b=o/B+1Bc4DDQlXDrWgtYeONCMo7TIwIClUcc2IKfSpGaE2ZQj4uMYsAlXZ8VDwImYi
	 hUPRHGJZA2OesCBgfbWeN3lx3h2fy5yoksoJZdbNdBTR83/E+INm/lnKlsSAMOcmN6
	 IQdFsOrPnFNHB+JeXRG6i0fEGiwo8lfUIv41FQMXhHnq/mqP3pky/r+F8BX1qce6Qf
	 uMzrHeeU0iR5vr+9cE+pXKTmqQqLX+URQ0Td4R2HZiKiwkGslvOVBYo5jfuKzwebhn
	 lV9YEmn5bPT1BEr9Q/8NgNncUOffHDeAw0ymAD3DSFlnHi5tbwkd8JpoxKPMPqmqwB
	 Nrptql4GhLNfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7573105D98C
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560493379.7469.9768545074689890067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 029d3b091d4acb6abbd9d401a7ff731296e5ec4dbb4bb07eb3d2f3cd718c27b0
Date: Tue, 07 Apr 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775604933
