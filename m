Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34E17F
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 08:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652863079;
	h=To:Subject:From:Message-Id:Date;
	bh=g8HtYF61dSuMpX0YYMam5A2S8mgbv9PcsYWLM8x9Jvc=;
	b=S5VOPJ+KHBV5J4hcQYRslfGUyrDcAIQYbxCHE7UiXMxXXiL/+Pt4+rG/u6eI7Q4z
	ON3btCFRre+slIomJTsInbrdWVIcYPwpn++qNie4EMQHoel/q6f+ikZr70QQfA7h2Fq
	QE5KFQpzKBpYFptlekK3jK7uPagnCg1BBH+rd2+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652863079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g8HtYF61dSuMpX0YYMam5A2S8mgbv9PcsYWLM8x9Jvc=;
	b=CpdxO2yyr5LPTGM9523/8sjuj2bZS8zyNnXZxxWRrKFsGnOHHI0PDurqopAYL9od
	Wm2/Vy0I2tlmlSP52eJZdJHNIed92lyqwdNFU85kJk9rDlPN3SMsFm+Xq3mAH8AhZJt
	uepSYa/rPRE2M/fy1XN2MbwwoZExNunaiHe2ZyQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d6511355-84d61a80-65ec-4338-ae68-79008cba4482-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9ebb983cae721a7bc5be698bd481384acfb76ca33020ce533dcd7b9c9670acd
Date: Wed, 18 May 2022 08:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652863079
