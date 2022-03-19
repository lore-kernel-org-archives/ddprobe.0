Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE1CA20E0
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647714385;
	h=To:Subject:From:Message-Id:Date;
	bh=NJZthnjGCLazarX0JhvVaOojAZjAP2CmsCdLXq0uNzA=;
	b=PgzNf8ueuDz+hU59oIPn9cJfVqF51g0onS3Mj+dhCrTLm+8glq8aijAXbuftQu2R
	A2iEWTO+O+HJXIUM6+0x3aMu40NI3szISIlP7uIcXihMB5vVADorh5zeMTo2YafUOJF
	vc4Y/gggUzm3zFBgQ9B1R36Iz8EP5Xm3n1FfA5vU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647714385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NJZthnjGCLazarX0JhvVaOojAZjAP2CmsCdLXq0uNzA=;
	b=VYNpf9HKUo/AizzCBNdzSMmKqKXOR65XaXZS3rmYbyFxxQQhpMkoOougIIngku0y
	RlkC2s21H92wV07xAXAZQdTbf8xfw2AOLvxtv5bQFYdj3NXkANyKHLzpRCYTmWIwdAu
	deu8Ki6ohPQw84Skase/5yqgaGQrbJ4dvV+3Dab8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa36e3b70-90e43773-f5fb-4d15-b3b9-a8ea351c3907-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9a610cf8ecd483d4494253855898a0bb31c533557a14336dda7e94f0305d152
Date: Sat, 19 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647714384
