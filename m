Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88404361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647209185;
	h=To:Subject:From:Message-Id:Date;
	bh=QGULsoGxEQwJNpt7vfBW6O4tNHfniEdyHscOaFp/tPo=;
	b=KSkW4RtODDIOvtVh36b5kjDGEZ+0EqOFXtgrPuNUL/oVM06jw+iT2jzrPT+adAlT
	P+uSJBS87XSoJSZFmOyRXsVNxtbhMdYuR8c04lz2zdEmIwtvW4XtY4ky/RRjwgy43pL
	ClHTgYXbqikzYg5Eoigx4EG3QfRf+ISobLDusk5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647209185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QGULsoGxEQwJNpt7vfBW6O4tNHfniEdyHscOaFp/tPo=;
	b=NsWldBAd8mVmoEfmW6JtVIff/Ax5gRCozDkWItj2/oxufa2Wo1k8FaRh5E1LDYi8
	NuQCMUMRNBkL/TFMx6ESU0tn2Wx3fdEJ5uc+O7gf63ObVqcXkS08cbBX3jC/FgiOLDa
	aWO5reCaadtg5ryZmBj5Th80dVcsAalltp7pHG/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85517e4b-57a7db4e-bb53-4868-ace3-b63fc09a7a01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 966b9a798e920daa3368eee769a1f49d868af348c0b02b8c6a6362fc08b930e8
Date: Sun, 13 Mar 2022 22:06:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647209184
