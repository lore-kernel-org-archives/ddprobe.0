Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1357B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 01:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649987218;
	h=To:Subject:From:Message-Id:Date;
	bh=ZpPYaDlLqrycngRCpasufLXF76px44goOfU6Gq/nDbk=;
	b=hnF3eWpPmBucQzGjQLvNZLrdsYNUzgAQ8cPGh+FRQraapcWxebWsYOfJKStJNjlO
	6/38SqKX7A3orgg/pOL00Y7P4uveXT8oSLnSNdTMD/B+o9moEN4kJNOwMXy8Zv2Tioy
	RRZU4EVdB5oTba/yykCUPj3JmNmhHPgg9nr8bp4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649987218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZpPYaDlLqrycngRCpasufLXF76px44goOfU6Gq/nDbk=;
	b=dVszu/Xn70Q54AUEd+T3Ea0ZyR9rDIbcuqbT8ZGmYUBZYZGEYbTQfkO2JSNIJjEh
	oVhKs/G7T0PThxl+EDl6j+NBd2N8AkkwgFrResHDer2vX4FdNPAN8ZKIfbUryFmOHIx
	ov422A94Xp41lLjMr3qJk0/XO8DDnsGuSLswCFME=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ae6eb20-d9f6cc57-5dca-49d0-a13a-fa87daadad68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9142689b21382f2c99fa4596aa114d7e35ba48d7825b2b2da19015975767070
Date: Fri, 15 Apr 2022 01:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649987218
