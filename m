Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA88833EA
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 19:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649275198;
	h=To:Subject:From:Message-Id:Date;
	bh=fa3ymzLLF/UhOOp9z1Pf2RfqTH/EhyAfUuzPPHRkNT4=;
	b=N+fuWqzJ17phnlQwDwBNSTwCfi+Y5xv0oN4IJNfGYjWcYPP/91rT6T1gV1ThJ5hY
	yFym3gFnBFjIWDjANUGadOIOumZ5Ue1e8v0ddhHNsM8gmajtqEVI4Dif4ioqAu1mT91
	WvyWQjJ7LpHH7RIVMAO3aYx83Mjt7ryMFaPZtN78=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649275198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fa3ymzLLF/UhOOp9z1Pf2RfqTH/EhyAfUuzPPHRkNT4=;
	b=MG4eDteYinX5jaEAbHOpMEcLH/gQl5xKTrIp12/yFZa5PHHJbisCq8P3M+ag0NiB
	Wx96kDHl4wz9WI8s/EhIE8XlXoViU3fUdvmUiTXg0oKfFkXrSn5INmCrSQCUxwiBO5c
	vt4BjZ25ltoDLuv/YxorwNENmYDW2H09uOzFq93c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018000765b6a-a762c3ae-11e3-4694-ae15-6d45db5ab15e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0bf1f8f15293bbafb21403ade588169cb8926270059d088c93461bfcccd90322
Date: Wed, 6 Apr 2022 19:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649275198
