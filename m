Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DCE7A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 06:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650608998;
	h=To:Subject:From:Message-Id:Date;
	bh=FRRWQHct2GWziqi3IMU8h6nqs2FsDUyKAfuLISeJkas=;
	b=UFkOZR0026pTEjEd+yheikDw91nGwc2l9CE7Fb//i0sHhHs2Pgi8Qo+HLHG3Jzw8
	UVZT1gbGZbXGuecNMOGn/jClwxZs1Z5uwvL6KzeVV86nH4BFyRB4LNxECN+PoN8tniy
	NILwwefIiOy/asOrgz8Nb13VLRFXXi5LB9E+Uho0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650608998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FRRWQHct2GWziqi3IMU8h6nqs2FsDUyKAfuLISeJkas=;
	b=VASK7Qwb+PZMSchtUKX+Kk438/3xk8xuEG3mOQNi/bwwD+IxtUL/qJlRjd1wg3GC
	2iBjx+2RV3gdsghI28ubFNOxManuk67h+mrdneDVrqu+ERTAE1sEP4YrBga+p5EVB45
	xsJ6MMIiKjD57KJ+ZL4OdkMO7M7pLntx+mSsC1SA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804ff6874d-21dd6d0b-eefb-4f21-9673-c10c914b1685-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9a3b7df44738adec3a5c3edc43e8b00d5e7f04aaf2ecfa1a2e1bdddd71e1cac
Date: Fri, 22 Apr 2022 06:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650608998
