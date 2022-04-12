Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3166E1FBA
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 14:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649773078;
	h=To:Subject:From:Message-Id:Date;
	bh=8J9OyxnTpivbcJh9WmYB/j4o9vjPYViaspaYcvKkKLE=;
	b=T/dE3b4O1Yn3rCAnjodrnqVqm8ItRBcASlz8wyOXDot81boGwreL4usY55lIOuJt
	SVxn9Mv3L7oy3aT2E4GkNahwKLOOK92q2gvwBjMNd1u9tQKeTIzfU5RKAEv/Y5eAg+Y
	2y518STXWmNIDmLYJnZQGxBMZ4H26GrRCzjNwXC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649773078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8J9OyxnTpivbcJh9WmYB/j4o9vjPYViaspaYcvKkKLE=;
	b=WIFCy03YLALNMNifPNUBTWTgOw9KDAoZq8WvhUz825WsgpKT1WyoTUa7yT3KWtO6
	6H3ebmWwQiW2K5CRaoEwC9eZIWxgwdT6UZ2/7I15mnKm0QhT5eUSW1HL/LwZkcPtYmU
	prssPjHEuFAz7gx4lwj7wkmT3cKlRjVAZ4lcqBI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801e236723-524a9241-7f44-48ee-bd8c-48b521e98637-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 791a4ae247d34f300bde7cd2b32429f7e6eb5b0f062c6c152666fd0181ee5d3b
Date: Tue, 12 Apr 2022 14:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649773078
