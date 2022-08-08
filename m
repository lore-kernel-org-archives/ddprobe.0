Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482E77C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659962452;
	h=To:Subject:From:Message-Id:Date;
	bh=R5KYTrp6p6cCSYWImAQid3/coAdR8mr+1rtBN8+iB7U=;
	b=P5Kq6b9Xlya/PyJuYI+Grswz+QlVC64UENnvl6uP4gTQi5dDWnkdZIs71v66E/U8
	04YZASlD4ZlzwOZDghRQRK5J5OHSbjKvmgr/YMFfuW02fywCTlLvVjy14TEUbRoBrGE
	xDN2jLSwn/U+ACeBUUQNSxrnUqYAKIT5ikXM3n2Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659962452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R5KYTrp6p6cCSYWImAQid3/coAdR8mr+1rtBN8+iB7U=;
	b=Q7T1roLFvlvK3OaJxnDjRkw8eOUvFviES+zwCl2EZiPhOIIzis3v4Wj4ATCbNQTk
	uIFDmftr9u6Zki9tlt568fS5yS3cm4raFJWhVqVZwNozz01+1yvodq2xS2akm0mCj2w
	7DXcgf8I1QaP50//DhOjyZLEnI97/0CTM7L+r7Hs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d78ea62-1b4a5663-6fcc-4b74-bd73-cce6bd58b6d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01657e579e6319fe87a01e153d13355935e54f2f98836b25493387c17ac79a12
Date: Mon, 8 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659962452
