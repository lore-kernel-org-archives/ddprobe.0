Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E96A185F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 18:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654368179;
	h=To:Subject:From:Message-Id:Date;
	bh=xlxmo0vC+BSwHlrO79TjbHFq9pSDIMCb03SwBDccawM=;
	b=j4viHOP72gH0lSYGTeZsqzGkURE9Ud5HJ4xycr+rBERTLBikmQQnuFuUx3xyGrOL
	yRiyTrLuTc2+Z+LZP0i8MEjU9KdOjF0M33jTon+IimxgDOTL5fHgP7RPGww6w/9gNtv
	KObJqv3pGmpDbErkuYIhtXPvKf5dutdTfkQdGeLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654368179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xlxmo0vC+BSwHlrO79TjbHFq9pSDIMCb03SwBDccawM=;
	b=I+t65gg5VGQj3nZLXHLbA895TV/NlX+khVZY7EQQMqO71n4N7u5+wQpLJqw4AmA/
	5ACBNl2OWBALhkgKJJNPNr2B/C+9ZAqHP0iDN6WDuBnLRK2Utc1NfUv9ibrXXM5moeh
	G17p8iADRT/EbQG996qabzq628uMU4+lPDQPZj6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018130071439-57b3fdbc-f882-4dec-9ab2-41c36c82c767-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e2074e0b21b99122c2ed0a3cb74a7569f28490d11ce8129d720eef6ebd68763
Date: Sat, 4 Jun 2022 18:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654368179
