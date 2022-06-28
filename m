Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B13463B
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 16:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656434212;
	h=To:Subject:From:Message-Id:Date;
	bh=ppZU6LR4u8ckjkwr15g9A+HPVc6S+Z/GYQ8nyW5jYEQ=;
	b=W+Z8I+lFwoN2hU3gV4Hvzwbm3STeFdgV0YNmok8VM9D3hv+/2EtJkkFdAOkYmGI9
	D/xl6eIGcEW/GPDBf2iyPlgmO5dBOL8i3pHkEUSLGtByW2OoaOQfip+tDY/nU/+q94o
	97vtPNyqh0z/tFEbau+Luo0sYHT7MfXhJwlShf2Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656434212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ppZU6LR4u8ckjkwr15g9A+HPVc6S+Z/GYQ8nyW5jYEQ=;
	b=Aq5S+BEgNDK/FYewVF4vsnIfLUzzFyy09COcEpcvRYcGaJlotI31aR+kXoKQrFQI
	AfYXeG7CC3FakWvJAXceyoJd/EFTqtQzTG0vSzsPnnWSkH8jZhndvyoLVTGyiJfNw+J
	5Y+PkisroxM+l1BZPTy3H50ZxBW12O3p6/I15upQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab2c3dab-4b1126e7-946b-418c-85e9-d5beaa52bbdc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a78b414f17a3963fa12fe79d02e0a019a760ef5ba15f4f495ca2bb234933d6a
Date: Tue, 28 Jun 2022 16:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656434212
