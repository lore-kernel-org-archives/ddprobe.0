Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960EF539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 09:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647683784;
	h=To:Subject:From:Message-Id:Date;
	bh=eqor57fKEnq0q9eeiQR2J3IIYxzzzbMsTxIcvmPB9uc=;
	b=H1GZgVzzb+q71mIqA7yGnS/zJjUk1rlhTD3HULZabetm1GYLpVavgv5Fttpb4vAB
	Xsb1IcHk3Jzp6MivehaZTeMUkKHk1h3RCKfRARSksQGELR/M6qTiDRZAV11c/SbEjat
	/2LG9IG0KGFM2P+kN8/uZiWfHI9jxpQ6puDQy9GE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647683784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eqor57fKEnq0q9eeiQR2J3IIYxzzzbMsTxIcvmPB9uc=;
	b=JMR1cCZ8jm1/xxIi5wTBBp16nfi2JVfbYMLzt8oKf753c0KlyIxAwi1XLB4v83Jg
	D2wDBunVbKnheBKcDLGD9PF6cl5aPAxkr3PMOfcpjRxzkOK7JXi1Vd4gQt1e/yj+Vcb
	mUabyl18iMfQvMiuWLz5JEnu+HX1Spge7KveRo0k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa19b501f-433d1582-12bb-4f5a-877c-8383edb3b29f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90b4434f6fde1ce60d20928e40006f17d0e11f51d75306ab57802a18d4c1a65c
Date: Sat, 19 Mar 2022 09:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647683784
