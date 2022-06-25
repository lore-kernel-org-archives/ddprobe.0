Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A2C290B
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656179212;
	h=To:Subject:From:Message-Id:Date;
	bh=vcwUsBSBCHjtJFeIThn3VhiPdOuUiXfO/MTKL4PUIRo=;
	b=Y1GgeQIXt0tzcJoTHOMKZuD+DOHcWqVV1CXyqQ0rqP0EeoRGYM3vU+wbz4Kh++ot
	6ZNfam3QHp9H4jFjTqpPhbwvJtYqPi5rgm9u8rvhYX03AvRT8Mw+KsoNutpdrewhwy8
	YVqPSZro+1mFVaDW3EqwbthUF/Crn0U/WYwTI6Sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656179212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vcwUsBSBCHjtJFeIThn3VhiPdOuUiXfO/MTKL4PUIRo=;
	b=KbmJpvrhgBvnAp781p5Ogkv3v0XonlC18DpKnGJ+xSTuZs9ddRem4KBVU/K9v71I
	J52WDqo40AqEZqDlh9+RTkPljKyDAEYuAkHUY4qZgXF16+QoG1+EDamnJvTwUOBGKpV
	pHUjhUC6q4Ey1fizFjzp8xNmHB60IEaQ4yPAM/RA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819bf93fef-373c408e-2fbe-42f7-99ef-066e95e0153e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa62095da17d9f2e9839e1acb787986eb473ace26fd137630badab9e0b6a8a0d
Date: Sat, 25 Jun 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656179212
