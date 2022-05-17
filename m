Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2099C1366
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 10:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652781659;
	h=To:Subject:From:Message-Id:Date;
	bh=7/SuFJwuypbbPtY0mFxpDTjmKzHujaFzCPsmePOjblM=;
	b=eqKxBy8KNtjK6+C3kmMiyU1xIIqaj6Vi7mMWNzFVQDCtWwezpXIt6iJP0m8Ep9SF
	4gd24aj3A6k+NO8i5UG7wNEb2TCyhcbWMjjt9S1oZTaSc6h+DoSWvu14wTxi5S6Mgbf
	qOYbBEAfwPXXCrJNCek+Q/KmaZ741L1tVIPAYMGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652781659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7/SuFJwuypbbPtY0mFxpDTjmKzHujaFzCPsmePOjblM=;
	b=c37bMyC6I2iEXv23WxdMhtikQLBPv8y+A9+ZmtwDcR2jBxGwjR0FcZCTs/EOxwvQ
	z4Kh3hfUXLRNLimxU1ePbq4WVNPNUzLIkwJPVHkjzxWCR9Cc/zLmfH+2vVE771kul/n
	f0eQxpEznkZqLR9CuMZtPmJY1H8o+i0c9m3EeFUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d176b4a9-ccac4940-e4c0-4bef-a6f8-aec06b0ce557-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dadbd118e09d89c3fb5552ed67e8173ef37f006439b12630679544024f861c2
Date: Tue, 17 May 2022 10:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652781659
