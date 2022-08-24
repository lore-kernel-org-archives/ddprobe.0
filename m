Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716737B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661346052;
	h=To:Subject:From:Message-Id:Date;
	bh=kc3Pda1AdFy6+m/cqeM43EedB+je2qUDBtaqccAAwN4=;
	b=SAmhVwORjAytR5wrYeyEEeGj96CC8lqnRmgywNIfPGFBedOao5XPF/x/HbE97xb/
	LWab/7ABOmI0NfgMi63yL+2YIfqhgOMudXembFwYfClCcaxbLAo0pDy4pIr9EqlpGAS
	vO4x3LPykEj4kR6qjxH5xBxjPi7J3Dwguogj2Ahs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661346052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kc3Pda1AdFy6+m/cqeM43EedB+je2qUDBtaqccAAwN4=;
	b=fjRFXr6MfQFk4tK7RNPYI5zI2b3m8tPH8gZVDMOCxxiKxDOBxp+pKvV9J4ogKdug
	0rgbp25Z6/rywOykGo3NrWv1Yc5YdEduzLWPWepctf5Z5+ChNQgFrcAdBSYM1J+487P
	ZXOln3jr86iq2MlIPjfggN3paGTK7TLkTuof1r4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cff0fa30-e093be75-1537-4623-b27c-6fe59f71759b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 85763c8e2ebd0dd7ca26f85de936079b30703ad239d2d6e680647e56139f1515
Date: Wed, 24 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661346052
