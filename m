Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0922B7C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 04:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655268419;
	h=To:Subject:From:Message-Id:Date;
	bh=eHnaExKHMJ4CtroQZZgPyoV9EHBGaXEAQImaF5nF/0E=;
	b=FtUDNadMwQ8fsqlxIDrEsu8GVZKNGUhWaSvZ+9myYfFhHlmV++1Gkk9FiGCvs54t
	PQoPxN+QclsOvMgbQ3L6yC3b4kBPsSOT3NE7GcWlq7bJfQByDm8Ykkc+AmLDgXV4rEh
	NgebVfLfAXLfQ9Xopx8TFYe2DNEZh4VdywsOoJe4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655268419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eHnaExKHMJ4CtroQZZgPyoV9EHBGaXEAQImaF5nF/0E=;
	b=ZZC048G0RlLpmQ2CVq79FWOByN5yxQD7tSakZAMtc5A6xuGTdu66MAhuBOlP57Jb
	7l5hG9E9+xDNY9U1+kWnrPRQKKkva2V2UElt++vd/uNcfp44kr3A66W4+1YEe7b6yir
	jvp9U67suYNn1HO1xHKolFUCcyEtW4Dk4QGJ3ZyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018165afa6e0-96b6f894-401b-4417-8a3b-c5f3753c1375-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2cff18fa926eabaf3cd701f6ec8c7572ada9dc4c925b61378e64f35d036e2c9c
Date: Wed, 15 Jun 2022 04:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655268419
