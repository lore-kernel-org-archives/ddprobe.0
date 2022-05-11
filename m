Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A15217C4
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 09:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652260259;
	h=To:Subject:From:Message-Id:Date;
	bh=pf/1OaEjxGB4qupVl/aXe1Y3bQCoJujBa14SOzu1eSA=;
	b=ZR7QN5jQS9EHSMa5Wo5hkxgYFJDTAArsuuLZh8LGJE0LtpLFPYDWXGbW2srubgJK
	4gxtN/0ueOvaVDDqNhmtXseJEySWXX8u4wJRr4Lho8N7xYiLKg6aPEVr0CDctVVTmYe
	GjxE9JvJkfzGCEv5wVgVJWDgr4WzNRwtt9/n1cRo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652260259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pf/1OaEjxGB4qupVl/aXe1Y3bQCoJujBa14SOzu1eSA=;
	b=BUDKgIhyiId7Hf/4BW97jMk94EqedSr1lcTopLj+b4Xl3QpcgaWcCmXE1po8Ex0X
	XEYCeOTTgFapcb2TsTSw3o1Mx0IOHfsTxzYqt7cua72yaKoQhhZKSVx97Tz3tjNbjIj
	lTCKd/nK70EKLD2d4eMrEfvdVvm/eqndOV8Vnxko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b262c5c7-64fbe7a3-eab2-422f-81b8-e4034c9c6ec2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 181dd53699bc3df532739d602e18d0736e5bb6efe27a8e8cec02664bf9709703
Date: Wed, 11 May 2022 09:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652260259
