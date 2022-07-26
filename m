Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11DE2620
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 04:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658810812;
	h=To:Subject:From:Message-Id:Date;
	bh=R3UlX7qRG6VZJhzLo0E9+dGBbh0SeW3LSfvCDeY1XWc=;
	b=TJbLgiHvLWzk9chsv/fweFgI23XfztUqbz3tDVnj4R52hwROpmh2QaD6+FM3JWTI
	FF98ZJB2Z17dIPFNGWZCT/RbUl1JdWfeOcAlTBadBtzC4b6YSdqEwGiFEdKih5WbQ99
	7mtuLoHZQ6tr6vLsG+dJ8WNgTq5WRBilkLvhzhNw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658810812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R3UlX7qRG6VZJhzLo0E9+dGBbh0SeW3LSfvCDeY1XWc=;
	b=Bbmh/DWrqCn16pxWgdLQT+Ct0PBolVlp99jqyJTd6dqN5wWPvWt4YDmLXEp4JJZp
	G0GV+W3Ih/LacPqbrxBvoRwAQ6xAvQtCcdY4StUIv0BK/Uxmd45u3RA5VLgnnToKuVE
	aSV5pCMAfuqZnSgyF+SnaVNetZ8LYAp3X/AypG3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018238d447aa-d75d09fb-8d62-4cd6-865f-483432f82415-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7afe7273e5c2d8b752b93ee326c0f2d0b4e4ec5f2c072ce85c3aa4aaadc4e620
Date: Tue, 26 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658810812
