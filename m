Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B713B41
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647461185;
	h=To:Subject:From:Message-Id:Date;
	bh=QhpqcB9HT4ydaNkKz3lvf4SiUgnBOUjlRrp5qYHRXY0=;
	b=UCgcxyvvDaSkazzKgHddQ7QCXOHZ1brQ9516Ek//JKil4Ng0mSr4qI2G86zp1IW8
	gCeEo356+V9ttPVkKt0jSWwyMCE1Gu/56l4Gw5VCGsPUAUfiUu9d3hntB66TlN1z9wI
	tGC8uiZUGr1B90xej6ZeQPHVH3SWA0lgP3TleSOQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647461185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QhpqcB9HT4ydaNkKz3lvf4SiUgnBOUjlRrp5qYHRXY0=;
	b=UNa7N0uWNFIT5rmNh15Z5/prILWu/vqTpaZkG1aXVJb8HkEELRDONEYzxOHg9HGj
	GDzmMENxbDhcDz0UUv+rkPxWlcn1BVgMHeheRJ1etE2ED8gSqKX1RuH1IrftzTLdo1s
	i2YxXWzQ7k9Zeai7GzjuFy27jSVmumpVa86wpFHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9456b4f0-e7d44668-a0a3-4e03-9275-aa4797481117-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa14b51db8ef43cf52364220eac240e77c8e78b29f3fe66d0fbbcafc76017aa2
Date: Wed, 16 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647461184
