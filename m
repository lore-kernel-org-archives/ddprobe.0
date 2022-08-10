Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E1A18E
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 01:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660096252;
	h=To:Subject:From:Message-Id:Date;
	bh=iJAnRnX49/cXAovr0u0xWI8Uor0AchG/Ut3vyYkrRvI=;
	b=gDg49E629QZ7u3ZmKqn+AbzrJgaRxEkXdcfXtVUHVFo2sLNju6BKIWWWJpGv3ePh
	EIh1rYP7oC8SWbOVWzvj06uaL5M+vAU7Augup/4fX/sfjW86+WmFs5RblEDfHFnBefz
	jubav9AFCfDTCY7HfJMcIGoMrB6Ju7ormas28VqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660096252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iJAnRnX49/cXAovr0u0xWI8Uor0AchG/Ut3vyYkrRvI=;
	b=SNWZOn2LC2XlNb72lr94rTpx/r4kKqLq7+GheJPouZD2CS+QUzcEQmxUqBFBWJVq
	FKR0aHcSjwiA/XsHDjIoRkXMN2n4yt6EGR2fAg99tD04qyFDe9O0EWDm5zP0+NMT3Oa
	PBO8Griw25V1A7XNP/Y5ug6Z7/a7m19tA9tAAH40=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018285728a7e-97e0001b-e42e-48e7-964a-2d46d4173f80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 34ae55ef4a34acbc6145c73e2b4b24b16b4908d960c14832adba12ac887df4c5
Date: Wed, 10 Aug 2022 01:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660096252
