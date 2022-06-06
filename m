Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BF353D86
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 22:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654553219;
	h=To:Subject:From:Message-Id:Date;
	bh=gZL902lulxqKQquYauCPYqrCsrDItBYD7a07nB3n50c=;
	b=WyjOJ52B0uqwF4UNKGFghyU4RPPC2t3/C5/YR5MAXpPsivANlQhr7f4kum30fljV
	kBB4Hv49b9xSbBgWvpaKkaFhi3U8WyxDsbLiuljdFwsJrIZJboJPr/+HDXWYMFzdSp3
	jt2zbqV7Pjvx4oeCJy7RYaEZVp5O2Zn48U4rJ+yo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654553219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gZL902lulxqKQquYauCPYqrCsrDItBYD7a07nB3n50c=;
	b=OBz24F8EJZbYsnKWNPbW1cSuRCnzTjuaNgZxkhrLou5fVz+y+IKgvpAD81i+h3fR
	glJYqvM4bjVO17fTmx4F/BQKDZhknDr5erKA0L02T+fWGcKOBuOQE/NVaKuzLbG3Bhl
	xzflZ+Hj0728tpG3TTYkOGbFMgSoX4woGBCUIRLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813b0e90da-3579be6c-05a0-4582-b07f-1f784b4dd59b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f826e5fb4d5df6ebfe3942b10fe578d8377971a106016a36b314229f0ea5b9ec
Date: Mon, 6 Jun 2022 22:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654553219
