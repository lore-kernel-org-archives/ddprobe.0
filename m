Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 784BC7EE
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 00:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658881852;
	h=To:Subject:From:Message-Id:Date;
	bh=IxzDMmGwTt86bJ/JOPdU2fmEoqgn0adfZQnJvAu9ijU=;
	b=YRor+lh91XFf0WvT/F59dnVy+PipxjE/6cDvClz1Gey5mTF0M1iHtOzXQQCpjD/n
	5FvRCg8XBM/TTQC9YDKY87bAhnj8y2/BYw8w5H9b+Fr8l1XZZP3oHLdAbRcjQQkAhhQ
	P4ASHg7UyyuHXKyFvJTsXWn9zeS914ZoCk6lDe/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658881852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IxzDMmGwTt86bJ/JOPdU2fmEoqgn0adfZQnJvAu9ijU=;
	b=Zvti0ifUc3ddvfBs+u0RiaVnOZdkB4biWQOcbIGlFTxJWdko7Uw7qN3BoEqq6k+F
	3RDyPI6xWNWAJmER/fzhAAarAH59Sdxb1gzjLxSUmYv1ZMFGXnWrxtUCnOhV2ZoTW9k
	RISbc5rD1eO/51bpmdTjN2Te8jaK0LO14sZlintk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823d1044dc-79df503d-349e-4781-bf52-5b29363d0246-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25f0fa612cd100ca9ef87e0d4ca19db1e5f0ca9d793d4679819f77a7f44e09e0
Date: Wed, 27 Jul 2022 00:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658881852
