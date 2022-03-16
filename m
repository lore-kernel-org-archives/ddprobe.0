Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606342F5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647424284;
	h=To:Subject:From:Message-Id:Date;
	bh=hi3FKm9eseMT/KZoGYSyx9/QngdvZP7dbIv8hdSukEU=;
	b=G0fNmL+tgeZyffE8cIWO69oX2pra8qhRM3x1l9FyTjt6ivTwl2CAJmY2s3vqGBnc
	7UM1f6PDSwe+euttDwBhDXMl4kLXzQh12XGRMaBDvZIm6O0bY7dO45uMfSeKRRQ3omU
	Cg1karCpAdV/d3v1rI39Mumc3we2ffq0H8Pu3ukQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647424284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hi3FKm9eseMT/KZoGYSyx9/QngdvZP7dbIv8hdSukEU=;
	b=TlO74xM21IYZr1vQ4THvb2tXvT6yKnZNVu618JHwGTsmHyQBplrS/km/TE0jyo1L
	NpW9UQzSmAA1a12AEDUeLV6McRliY9sQvLBd2scGwYS1UPzAKfyaMoHhKJD4L6bOeHT
	CxtGVTbtoADIGYzkAG3KD4X0J65C2TOWQM1r4dCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9223a850-49ca3a9e-3cae-4ef7-a7e3-3c17901a9f8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05c29da8b15458092bb9afd0a2fc0a836a0485726c80ed3eb854477aafcd416c
Date: Wed, 16 Mar 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647424284
