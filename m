Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE21601B
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 19:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657048612;
	h=To:Subject:From:Message-Id:Date;
	bh=RYKKCoCREBmwnKqro/nTOr9z/b67IMrcyZoLusFV1sg=;
	b=k9ClZfCfcjBMqfEI7MfhTpRmOuSiU7CqfroSV5dfK8gATJV+RpfOJxpkoUUnSH6h
	vc3xwk3+hCiGn2BewUP2eqOzcaREGWXMHruIyPsSx4OH9BOQM4ilGddEky5guhFreYZ
	9Gsw+y+5VCzAyWUiZuVK/4rCUFdhSkd/nVt5OTgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657048612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RYKKCoCREBmwnKqro/nTOr9z/b67IMrcyZoLusFV1sg=;
	b=h5SxX4jvRNklVWaY0pSLC3nIzmF/Ig/nbYm1cSEdUsucXmKf3AcbyQXXp61oeTcf
	v0iD9mRXVDQtU2wd1s7uEd/XZr8KDZv6lCO49TOYyCjwbAc4PhBZqhwJXqEJN+0hqx1
	O233cEmEDviXsPjB4Cs5f4XcYUvqd7Z9xeeG6Nbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cfcb3daf-502cff60-89db-40d9-9e28-ae826f110d7a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9391c2a8b672b0b8c3429f28ad1d9ad4481f1cf7240a32c8a4b1f33ad79ccb2b
Date: Tue, 5 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657048612
