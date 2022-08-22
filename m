Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BE804A32
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661198452;
	h=To:Subject:From:Message-Id:Date;
	bh=CgxcUwGpdD8MYjgLWNm+dCM9DsEwS/abgJcC+/R9CpI=;
	b=Uv9Ft7Zq2hECtB9O4gMowfpuxEnmrZ5QJX6uUD7kGXslh7BK9ScUDUDrSRM6Vr1o
	NjoQ10N1s/VzInc3aVbRE2hwokM32LOW5+epw7ZNQC6CmRsSlZHzwUrvbm6AxC3+Qgg
	pydxkph4IFQMJePNGVP1USq3umwdRQLooq7rGxU0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661198452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CgxcUwGpdD8MYjgLWNm+dCM9DsEwS/abgJcC+/R9CpI=;
	b=Tzz59pwF6mfc4FYLaZddLHljA4TrURsE9M/aDw1KEB4Dw6ZXf1hRauLMN/rGsE/l
	hmLjxF5WMNrKFt26Tv/0zTFf1TrzqnTkiQmsNiDMbvSE23hgsCwD0RjPdPFTi6VmylO
	Tu+FKwOKK/szsUFzJvWNHTbiT/lBnLR1nLkVUb84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c724c75c-97e33fb3-f3df-4c94-bd9c-793ed184458e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a56046ca1204de5e8cbaf83e61e6d60929f1f406b72e662620cf635a6779ad7
Date: Mon, 22 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661198452
