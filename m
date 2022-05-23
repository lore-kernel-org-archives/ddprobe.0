Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C44436E
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 01:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653267659;
	h=To:Subject:From:Message-Id:Date;
	bh=KDtRoiGiQXX5SOb2IThjuF3eb6LBRdAkcs4As65xD7M=;
	b=DxbIbjDr5cWSeVCj5vDLHJ2ViKE0LOvC1uO7uk0q0lWLR1Qg3Vrpv6fPDmt9iK8s
	wqcUeapQhez0SVeewHpEC3p+W38neoKP85PBjtM4u1s7mqqWwr1gERI/bf2jdFo0sUD
	Dl9/zDlHluuBMqLPjUXQEEd1aMVSDAhM3YO2aUjA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653267659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KDtRoiGiQXX5SOb2IThjuF3eb6LBRdAkcs4As65xD7M=;
	b=hr51f331jMOQJmJ0IJjZSBM0YoGnfo5fFiez15Hhub/nIugaHPgzxNrDNVi5pgui
	amcYmOxl9fFhgLq1XNkpDys+I1GkySQ3e92rX8+rzRRcYr9WRKGXiLuFeHSzDXaaqhF
	G0oo2bHzEyvD6d+ggaVLWUdu0zBw/X/TK7lB1IHs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ee6e7a5a-c7bf0c9b-1225-4e55-9def-c45db9007e19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61341900087173da75366c56fe1fe0d0d8d8111cfd1bb913040c408f74256d86
Date: Mon, 23 May 2022 01:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653267659
