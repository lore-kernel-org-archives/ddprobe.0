Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A7420F5
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 07:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649318398;
	h=To:Subject:From:Message-Id:Date;
	bh=Lqe4zfpxtCFh6sphZ5wUFn6DHKHdzFKqDsyoB2Z8KJY=;
	b=S3rRtLnRs1QEH+TGKaYu/gJT3uoP3hofTYqUBMKh1Fxx7HTRc7x2c9ul4oVadIuJ
	VvtrsCA7To0ymWPxONjAttnMkPvWkOF8g6CjptrjlRRMOwLTYTIMGnci/tMUL061jXn
	cXcfnINcwXgJkQcdcQ/L1Ql63GLNBum3tsECu7r0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649318398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lqe4zfpxtCFh6sphZ5wUFn6DHKHdzFKqDsyoB2Z8KJY=;
	b=R568Cr2O1Pzp2vdKVhq4uPnig2LUwV63qTu0bygPjyWJPaypiKlRcf9UmWmbDkrd
	835STw83iJvk+iiRxfahGBMjrZQzofoWlr1VZzVgJRmp24eKIvKZyOytWkCQcS/y9l+
	f2veOeutjABWS1L/xBj9qykae2hOWDzjZF0XimoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018003098939-918ddf76-9ad3-47f1-ba2d-3bc488321b26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 38f9b1574f30cf1dc48c45dedd80c5eaee0ff075048410b7ac14e745b5154da6
Date: Thu, 7 Apr 2022 07:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649318398
