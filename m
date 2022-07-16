Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FD4367
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657933612;
	h=To:Subject:From:Message-Id:Date;
	bh=hY62olqYu59Kg+ENX9naoT+Y0arqOKciI2O7n8b2T2Q=;
	b=G4Ij6WqFqge9kpS2uvUbrQruVO680Nqom3DE45HgWpD535mP7263i+f9b8gFjqG1
	lWyGnuBNIR6OcNvjfYAh69GwzjIqiqQhZdsjF0VObkCYqR0922nVuu81pgPPtsV9zOS
	sz9v5ynS5j0Y/r7yDDB6X9/u3GE4bp6RKraVduPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657933612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hY62olqYu59Kg+ENX9naoT+Y0arqOKciI2O7n8b2T2Q=;
	b=IGZ0zOtOb3u0i1n2H21KoV4V1dnP9Q0037ToWiHtUdvbtq2+GnEpwjjsler0Aozf
	NuGRt3AUST8h2MNTggpv94CIUWFwFuDOy/rp/IIBGK5KfttsDIB3RomymnEdPr49pvJ
	XNz6KqhLC/+V+lTSyWMeNotg6pP4loBoOU4zaMXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182048b450d-ea6b2e20-394e-4ce8-b3d5-f403332bd04e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb3e0f2d5dc83f693b1a76f269a0e75dbc0dce51ac5d0cd58f7b89aedb64acdf
Date: Sat, 16 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657933612
