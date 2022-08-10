Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487DB17D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660128652;
	h=To:Subject:From:Message-Id:Date;
	bh=FgyIph5srJjef+HQobqPJ+8QEVs+oHlrqbadtWl9ytk=;
	b=DUnQlVo7f+vWwNDPWpFUn5jIocqKhTkxdjwkdehxULEAb6AAFeOQ/rE9F1EpQM8m
	rrDwXzFYyhjG1jcDB+q7Ds9/UZiS/3aY0KYJeQsFU97Hhss5+vHYN1cj7Ti7TSfL00n
	8r133nPslv2us7fnITuniY9krUXzpIq5rwJp3SPo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660128652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FgyIph5srJjef+HQobqPJ+8QEVs+oHlrqbadtWl9ytk=;
	b=TPkvQGQNVvTDuCl38pxWLkmsv1X3kX4ykwZ9sojbpuv3A/v7yHiJnZHif+p0FEwu
	FblmFhDEE7NqNm8tjqDmQZUqsdTWjZnjRWAaO5UQZw/plgUAy7l6JMSKgPJzaGueSRN
	OigjCf+g0kERdsyDPDlUdOcltHZ1ZwO937SylaOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828760ed01-59d2b4ab-7513-47d1-8ed0-7cccaf10568c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c90c6a5ee2d10fb89b3acbcc0b9ef8d2aa1ae37741277218fe690ef92d37d71
Date: Wed, 10 Aug 2022 10:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660128652
