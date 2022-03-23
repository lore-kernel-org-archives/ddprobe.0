Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77B01391
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 09:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648028485;
	h=To:Subject:From:Message-Id:Date;
	bh=0nuSKQvqAOJ/T1l9kFvXPAYmdMrFGpQ6kynU124LXko=;
	b=V9wjgQr5ExhIOe70hGC07sO93QXUptzJMyWjR9QC2JqeJJH3LCus0JkXgeqv/eaj
	ieDFNyPbxJ8qyNE/4nSm79DLQxGUMHZigDGDIu6be0IUbeg0ZzS7AaAxUfb5eHPh4Cr
	pOt9AOvD/q8YgTyfc3xEVktLmHjNWjt6Ed+ydzHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648028485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0nuSKQvqAOJ/T1l9kFvXPAYmdMrFGpQ6kynU124LXko=;
	b=RC1bcjl7O385ERlgh8CKDnzhSR4tFk13CLzVodoitFhjjWaG6LPE8F0yEYZT7Gzh
	yN25vzWFwlwHyg1hC5Gh/mvjQg+mNbaGCLricLj+JcgxwbOOKwiX8HAhKubk+5iR8TH
	cpzFwMOniQqMFGlvWR3F11971WfpeA+DOoOkltEA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6270495-41c1dd54-060e-418e-ab6e-db5b023470d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cd5d8195f52c32ba4de8c02d2638619a270e4c65dfbad18673088366556544f
Date: Wed, 23 Mar 2022 09:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648028484
