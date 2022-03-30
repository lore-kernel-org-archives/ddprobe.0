Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB9A63C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 13:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648648198;
	h=To:Subject:From:Message-Id:Date;
	bh=qLMg5Ogi5v8GqaULZvia9IQDRQuUjxgKRvyxvklwOYU=;
	b=eeLGJc3H1w/NZ+D8hkv4+aRPCyxfOtVcmNoKud2thbSl+Qdfyo4roE1n4jPTqIBd
	sp8TnwghfhANiDZC/i5I7NCjwiin5Uvl/yw6LUPIfVSrGSpfpdf9T215zv+bNRUtRLu
	C3KpVvhnJAZjWdoc1DTu/wE/629s5O6RsWC6tgKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648648198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qLMg5Ogi5v8GqaULZvia9IQDRQuUjxgKRvyxvklwOYU=;
	b=AZfmOWPwriS+cwCO1VnRoaxGYdSMOJXrS6T4qzUPvIvuO+DE72jyX/+GB2LXJqSr
	3z8AFa1ldUKS2+3u9tvrGTjf7F2OWo3CHYEWQFOy50/Q9YQ/fZXdi7JBe+CLat+Wihv
	toWUC7NOzX6mxZXfKFzKVfdUlOoNxtt8jvbjZqWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdb171885-57b5450b-2288-4176-b18a-3f778ea2151f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4ac78a992bb698151f27a5130fc545f22f2df643c144b70b30e72be3844fefc
Date: Wed, 30 Mar 2022 13:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648648198
