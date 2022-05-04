Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33AE620E8
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 03:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651635838;
	h=To:Subject:From:Message-Id:Date;
	bh=KWpt9QrbQjMd0kY26C2+658EokHPSrJ/greznIzQIU0=;
	b=WeOcf9OXI6Z55wioFSnA2D9frG6F1LP6v57NhU6j1lx6niCtVyDmGGynPo/L3Ezi
	xy7Y58UyyX/w2XujGoJfRVyUe3E7b77awSn6rjy7uMgHuUBQOTXc1w4nqF6F4FQdf6B
	8V7w1ns/EwLdVhTJHKzPIFPBzGSgKk2nij8E81/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651635838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KWpt9QrbQjMd0kY26C2+658EokHPSrJ/greznIzQIU0=;
	b=PxSEbRZ+JXN1pDGS94hlTaf+ZZJnX55JP1ciirmjnd1SBoOTQYPha5rfgblhB0qM
	M2/19J4B6PTNz2tCfRAlYqc/afOmQCkrojmqMflPPOra67VwAFyi2kqh4ZXK5le/xU/
	uHQN2rtb5436osvwx8hEAs6qRhUnD0uOyWzkRrwQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808d2add16-461f7663-79b0-4a52-8998-9956e14f8301-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dda67da488a28c654fcef5591bf8be132b08afc33a8c15b3829a700e20493442
Date: Wed, 4 May 2022 03:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651635838
