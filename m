Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81A6C2563
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 15:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649345218;
	h=To:Subject:From:Message-Id:Date;
	bh=olXDzbYBuUa/C/NtuGBLtx9XXRrfd/Z2g0vNSD49180=;
	b=Us6eKsd9JN607INzMTJbH2IE92+MckUcGXm2ny8BvP5p/med/c0qAz/erm8STkCV
	ftyxWXF/1CtTNLcLprTrTHMl1XtkFaME5e8h3cynG3mFLFHHYa67WRdbo8lOYSTc3j4
	wv0Ovw2M1ovKkRuYqhhsJG13pbSwSi2m+ZPG3mF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649345218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=olXDzbYBuUa/C/NtuGBLtx9XXRrfd/Z2g0vNSD49180=;
	b=bXyvYalcC+CnYHnFfSucxQT0UN/k4/I1OEimIL+Ra+f7yJq1aDvGp2jz/Ur0DMTf
	fvAht/gfA/w2CPHbzWVFchMjrrdmzyIuNtOnVerWrWjNNV8Y72PAv/Ma/z29z9G5+9v
	cvap9G1JRDd0XeYBlgPEzReimf7Tn5N1Md/l8cV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018004a2c73e-f6209742-b944-4118-9084-86aa7cead84f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: babc0011c8dff344177f83abdffb2236958864d8023823377c24133f649b11e0
Date: Thu, 7 Apr 2022 15:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649345218
