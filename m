Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEE37B
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657465612;
	h=To:Subject:From:Message-Id:Date;
	bh=JAC4weMbL1BJ98B2JpzhZ2GmJRLuof2MWrd85+aMw6U=;
	b=ZkkMzelmveDPkpdw4NgQI9oEEmWfJtWuYJCQpu6WQozIHnrLR4jBnMeIlbWi5FYe
	hRb/wcyL/IV8RSx6TTRQ6N3WNR8VF1nv4gF3jXhj8K2pazcr+XTUce/kHEMQe0s4L51
	j9ccUu/bdjlFH99GnELqSXiFoT8ZZcw8eNwHzY/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657465612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JAC4weMbL1BJ98B2JpzhZ2GmJRLuof2MWrd85+aMw6U=;
	b=kjag2EmTCiYK9etusTaoJ04IOPjHLASZsUpybMvjHUe0Yj9G9EnvgclmLUTSB/TV
	Z0eB7nI9pmcJJoDE2x/xhTq/TjrzwGzGaKc1yhm80ogvFl221tmgAaUkr+iyrz6kBBf
	DcMeR/qytyGK9Jn/g3xgP9FIy1wYnnnzR898th7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e8a62827-9f4780ef-0789-457a-a45b-8ed5b47fec1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2c2c87cfa28235ae931237923fc9264e97bdfb96e533997de51adfdbd85a0f3
Date: Sun, 10 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657465612
