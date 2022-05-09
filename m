Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 897E523A8
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 21:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652130659;
	h=To:Subject:From:Message-Id:Date;
	bh=6ixMLlxKukbIVUfM6Ynm5laJ86NniZGBgNjhiR2lTQM=;
	b=H8jc1CZeGex5fGrBq0+nl/92bmSzFQ0Pz5tY8LFmaZAhqpVbgF6m5N/OYMgmqQD4
	VFVM2fl+fPvLI1q6fvCIGql/t5vtddlBd1jAX/p21+XnCpXkslWop0zw6f0VAJ1Irbh
	OAZsS8p3SHofzZAxiraouDEOWCOGP2MAahKFkFDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652130659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6ixMLlxKukbIVUfM6Ynm5laJ86NniZGBgNjhiR2lTQM=;
	b=BKTEfoPE8kot5s6Yn/MmwiaexK28qRNnnikcvd/iBk8SQ3BWGySkCc1Emr33QizK
	5oyaaOE8oF/GE5ONDJNHhOOayRy9WWn20+p//wlfv+cPmQEfFVzAD5jNa6sLduSO9Kc
	JkoWcELtdBjm6pqx011v3kP6Azg1PFnOT8znToDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aaa93bde-81166002-5da9-43ca-960e-68f313fbfe55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef30331b5e41bd10d55ac68aa683270fca70a27e375c92056f2867fe82ab51a3
Date: Mon, 9 May 2022 21:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652130659
