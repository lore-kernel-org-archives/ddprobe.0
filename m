Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E1C7E
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658648212;
	h=To:Subject:From:Message-Id:Date;
	bh=8pwbFQYu1kSOM9cewfEiQvndnfRum+e1223Xt5Uo0hA=;
	b=NZnQhGQfV54N7MHGfr2pgWj2JI0cw9My5MgTx/08WixMAjR4CD1XpT2e/FB1nLGY
	B7bSk9sl1ccQmSO2Pslec8cEsamx0xh2kc/DEG1FsTM3357gO489CL4H1UfXAeA+Buq
	7aFP9Su5cd34KtSbGn6VQbPuIoqBUboJD++DuBTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658648212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8pwbFQYu1kSOM9cewfEiQvndnfRum+e1223Xt5Uo0hA=;
	b=D6/4Qmt/0fP8HKELeg1hhAy770j2SYjlGefsckU5lSCcDTt7pGR1qKRjerp3KzVv
	XVUJpGv5rKoO/tHnfNCnQ0D7dKJrJAvOP1QK/rAbWqe8gkivpo5o7K+zO7bejpMIKYn
	sWfGPAcCOY+2QAeOmJn4hHDCDCRaSZRW7Mz4d/rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822f23332f-a2b7a8f3-0977-451f-919e-de884c310443-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24a3b1a836823749fae052e355f2a8ca5cb8baada0351d7f84a64879160d5efe
Date: Sun, 24 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658648212
