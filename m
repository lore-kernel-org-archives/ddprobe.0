Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4928C612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647891084;
	h=To:Subject:From:Message-Id:Date;
	bh=Fit0vxErTO/YtMKV5ZhwY1ZsGhRPkHBTTNAfJyNcu3s=;
	b=idUWYb6ZcloM/5BfAyGRHmSEV8Ubk7KRVkD0MNpDXr/sytoJppHqjawlQf6q5ciH
	TpH1EwuwuMw+sVnSaiF12m9QMMFXsEkCmSsNs7jakODBLWNTc/GW8giTVAcMvzWbHh6
	JKJ4IQfkcOLglLpnIRQCAcMe1z1voQfFr5NYZBro=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647891084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fit0vxErTO/YtMKV5ZhwY1ZsGhRPkHBTTNAfJyNcu3s=;
	b=OETv7AtXf4uQav9h5y0SimDOtiaS6bRXaHOhA/NdmzBL7vV/ZiUp5Xywu4x+9Qlx
	BDVsamOWbfuT1uwdGnAlV4cVbuzPg2JwweTCveoqC58hNkBXVYBTKHmGHZAoemXKgiQ
	Ak8GRCqr7GCnWmp3RO9m9RUU0x0T6C+nQrWkaTIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fadf675c5-3d1ef6b2-c716-46b8-80d5-cca567060545-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f639973f5cdf3e1fa15ea278bbbb819ac1e4467db6538cda6a97ceddf672abfb
Date: Mon, 21 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647891084
