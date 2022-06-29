Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE923FE6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656538012;
	h=To:Subject:From:Message-Id:Date;
	bh=0dlOO40G1IWinjjEKYrb79wSoyVbh6g4PHNLbNnI4MA=;
	b=YMW5T3HNhie5PskI18yZiOdCDia7egj+2XylT6TXJlmj7frXbAhBzi84WqY6Wd1S
	kdP/lLQLKE/xFD/KwdRvguDGm13zW5UnT/r+aKG4/9KCWBpQjPvQntIrctMt37IZWIz
	nxmct78Fgd+/YRjyxy08ik3ge5gvS4Kzd57C2lOw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656538012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0dlOO40G1IWinjjEKYrb79wSoyVbh6g4PHNLbNnI4MA=;
	b=FxQMrXy2iMafvi9sxA1d3lHVPPPFrdWu2xbcPfor55UuDk0D/INYYHOoXHU/e45f
	s8J1ILvDDdbE7QIqN/+6T/b4d2cUwTs7CgtnsRFqpC9QbTzEqB8tv0A4C/5lJzDkQDn
	p8U1YdIrC+ldLDZz/lX/7M87qG4eQhjq0JKfEfPs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b15c1adb-37001c99-528f-42e8-8b7b-6b41e7173216-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f7a793183811fbf0d9f474eeeffaf24937a1606d7cc670b709ec7d55058d0ff
Date: Wed, 29 Jun 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656538012
