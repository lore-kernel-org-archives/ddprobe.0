Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED73160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647717684;
	h=To:Subject:From:Message-Id:Date;
	bh=W1IgyzACQAgD6Y/aMFCvV1eZkyaak70QKJgP+LH5Itw=;
	b=MRzJtzeCs6MaOw3ge6MXeU65C7JT583lgAj4I1SL7hI3CSAuUMdsn5HKiBKc7gB5
	TAsKcE1MFytWhybEd1t8dmf5ymMDtJiJH1ugsn33fb+oNhW2ur/3vMfi3hhTFY/T7bN
	In/VPJV95XPS1r1ZbAFRAuMpke0d77z+5j2NUcr0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647717684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W1IgyzACQAgD6Y/aMFCvV1eZkyaak70QKJgP+LH5Itw=;
	b=S0sb70Vv5A610qTMr1pt/+D+eCA7yU/CKzvZ9JDE07pRM4K7jFftqJan4Rt4m41o
	czmB2qeFLUcchCsF3KtB+WE9De1cMBjQz33MHCglP/5B4Aw2nthAE8R66qikN3nyejh
	EwgNlqceASX++K76A9US3xWfODjgeeChsfWCUz4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3a09617-267a3298-30ee-499d-b188-265b840a5a3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a40120ede2d0e65757e132e241204d0b010fef409cb8d81473696b1c432b2c82
Date: Sat, 19 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647717684
