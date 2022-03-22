Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BDD42B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647975684;
	h=To:Subject:From:Message-Id:Date;
	bh=jj4wSCm0jQ3bCYI1XfeK6La7hs6qXR5c5YU4jNFDT1A=;
	b=KbpKSpRI1B3tEfi3ei2yLpqNZlpxxwOa6sP/ilXTwn4mi8xViMmXLPiuO8g5bRZK
	yRO7fxxJfgHDycQojCRugkSW5E59hUcOnzY+FY3ERBggnjmF/VR+0VFZXw7sQkQkpN1
	gy7sGk9tkJHZNC7ImZFG7slgq0X56nmwo2SXD3ig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647975684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jj4wSCm0jQ3bCYI1XfeK6La7hs6qXR5c5YU4jNFDT1A=;
	b=kPKcFNMwY0X+XU2RRV00kmI16Vw6NGU48adEyZSbDfmjNl7f8PctLn11bKdXpKLw
	Y6cw8rMzBki2zMgbHtpEqDf4WbYkO1xQdjQ6025xi8L0yXe6m+rek8OQVjaUM9711Lv
	KZtHW0x88HPDFqsc3OaB/GAQ+F8he9m5pxPcGEXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3015ac5-b0b26648-e030-479a-b6ba-920cf2fccbdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9a92e540b1c120327d5ecf56fb9350e802d19dd28c4e10e0d888039a117df80
Date: Tue, 22 Mar 2022 19:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647975684
