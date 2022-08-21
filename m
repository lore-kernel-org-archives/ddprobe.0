Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2023FEA
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 21:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661118052;
	h=To:Subject:From:Message-Id:Date;
	bh=2PSqE2D0eFOS8WOEo1JqTzeIfTnvx15+a6x/oZByUzA=;
	b=gEIor0TP1mVCcBhxpams+9jezoejttVKY2QaowYH/9ZLqtXjM+mq4bn//zTb52OI
	QmzJ5WBWWbki+0JXd+U8MSzvw/bxXs4LJz6yZisnINtUy87KXFdFl5NnFsmOauUpRza
	aDAfAbObYwBzUzbOF+B0r5B5FRFWDYFFkGHTVIiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661118052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2PSqE2D0eFOS8WOEo1JqTzeIfTnvx15+a6x/oZByUzA=;
	b=Jhm9EtLEpKXblN7uCcR6PIQ5SzfDlegOpBsYXi2Cm1+EcXoUqmVq9PtAboOHuFPO
	aS+nDv/eJFQmI2tFo5esXFXlpfFO6hzxWRHgclHdn/xzn03/Dq47NTIX3k96ZY7oqec
	Ev/P2O8tcrWhy1MR7mLt4Lj5kUfD5Bdp3qTa5qQ0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c259f8b4-2c129b94-e9b2-4ff9-8a45-3c0241b89767-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf5b1f918e7d1e6d0bdf2ca0d7f4553505eea64fba698ccebe71f68cd291e5a7
Date: Sun, 21 Aug 2022 21:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661118052
