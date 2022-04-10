Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8673EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 04:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649566198;
	h=To:Subject:From:Message-Id:Date;
	bh=DpkEmnnP3jtpLhiF/fWYeDq4ifL9EsAE9qV4/rwW69Y=;
	b=YOKqdKG/I5bza5Bk7wP+W1KbqJMJY46TO9ivaTRbORXynuDSusge3EMTeve7Mm3b
	eu68ujHr21kYOBAFFKLDHmWwzca9Yi8osvQHk2x27DLKI4ygD3qwxh/SYJW6Dly28Mx
	se7emKc1jL3tZZSVmPYmIMl4Q6UFrBoJFpc4uIZo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649566198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DpkEmnnP3jtpLhiF/fWYeDq4ifL9EsAE9qV4/rwW69Y=;
	b=YhrHuec2UmSyKkuqHgdT/PLHIboNboP17LuASdSFecnoHNLG7ktXNcK/B0Wr94Kb
	x/oy4WFqUnv3q7DFNb2cyQRqNRAuSDf49WYbG5RbLRHPH8HTPZkhqiXLwraAw2ZGkBL
	+azQ+2BoNkqWo7+rvvBevbqUQzxnSR3rqcsxKSpU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018011cea9f8-0d926645-3bc6-4d13-a1c8-8b0bf53193fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37ec86be7707dc8befce080238439f8bd77100c9bf89dff0c6347c1ad338e454
Date: Sun, 10 Apr 2022 04:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649566198
