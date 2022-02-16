Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90C2D23A9
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644997884;
	h=To:Subject:From:Message-Id:Date;
	bh=JlsrncGAdjb8KDfj3ufW4J5Cveq+C0sdJ2FuqrzU3Mc=;
	b=LO+sqcneOTQP2QViOjMSzPmXFeN6QBUB1+gS2/s8+bUee+tOqDaqv+29MfJvTTWS
	6ZBz2nb2cSZdeE1cmWFWycunyhlOpGsRWKCkEM0SVhjKMxCTMpQmrHGDF6wKNsIJl1n
	4PSmEeH5uxI+3HJM5rIvHzY8OGs9JUrG6cWS61q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644997884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JlsrncGAdjb8KDfj3ufW4J5Cveq+C0sdJ2FuqrzU3Mc=;
	b=d+neDQUgv7Y1GwGuZA/BkjTTQ8D1bhAoAcJ3TUkISIE2A9HscxZazA31dwaP0ezo
	2YuyVle5GG2B8Dp1UvQb4zjVRaB666+JyjW25EEOSVk/ZXe5253CqMwRE1CX8GLip8A
	8hYFZTYSC4ITNsbCKVSpBYsYZwMI+Fc0z1Yqe6rs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0183bb65-c5ac5030-0228-4a6a-9391-9adcb2cdcb81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 575c000758e827881314fe359a723186ac02ff91527403d345c5f3bcb0a3766d
Date: Wed, 16 Feb 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644997884
