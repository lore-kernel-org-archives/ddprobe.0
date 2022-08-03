Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637E74A11
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659562252;
	h=To:Subject:From:Message-Id:Date;
	bh=J190BR3hMEn24Qzd+RrsdIueNtowTgii5WxaKYegL/Y=;
	b=jMJviqMxyPd7+7Bz5sC7R3KKVYCj7Nfnzvyux76pPbZBipwDwkmEjDJifhUG0tma
	OSlO8psKpxnSVgTPvtIHJJ3ZUs1gEHLuK+AUW/UZBFKdxik9Q66e3NRBqBYQ3xgVGJE
	NF9XqCsfWtsYXSSywhEoCJcCRDPj+jdmlcKSyYHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659562252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J190BR3hMEn24Qzd+RrsdIueNtowTgii5WxaKYegL/Y=;
	b=LVd3dKxrDPBj1tlZDjryOPcovKCpMvRWPY/WfcFhnB/QjjYHXlD8iPPiULI5YXLE
	/ehxfD5mB0EqICuDMjkoYCy5mTJ6/yhF+4guY3eU2nVfFzhVQXy8kQJf8EgZgBpBjiq
	t5RFwsyQ/pMz3J5/RIKPQI4nyGHW5VCqeY1Z7yfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182659e593f-1947834b-3074-410f-9a0b-592c20e8fc4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51d5a87a8a25a2d7dcdbf0b14ab3f6fc265fe7b62574cef621b00c250e23075d
Date: Wed, 3 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659562252
