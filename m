Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ABDC1852
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 03:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651290838;
	h=To:Subject:From:Message-Id:Date;
	bh=xuudfDydp2taXwNTxht5HsOxt10qVKuuYUhTOSDt9hw=;
	b=CXugHwvmMIjzacaYbl/sZtabG+Q57kqiLrOZ2dthqZ+2mSWDIRoAHPL9DJEBUoQA
	ivRuZFKxbWqU3Yefn9cYfBj+oinWnw1hGqCtY+KikbpAwmC1ZhmDcT4wmsgQHrJoq+r
	dOseI6P5/rjggP0UeAMPBBM4ganc1LgEBYXi1WCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651290838;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xuudfDydp2taXwNTxht5HsOxt10qVKuuYUhTOSDt9hw=;
	b=AkL2+uX0VileFKODLbg2zXyy687djEaazqeryMH7vXvj7EkobZBBPSLWiXrichgW
	w2IuhJ9mzBPFnNhdIHXi8ATU/jU7dUaxw+kl+hYi5mCP+Zb1G4SpHX4RhzpaoFYixwJ
	r+OfJLv3N/aGRdtp9XiyoJK7z5s9Qn1gLusdoR84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180789a9509-5cb1c08e-fe38-43ad-a36d-50c72cc9643c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edad8f1ac0abc8f1ca9d991bd396eef186c61bc42421da55390b6d75cb7b0fea
Date: Sat, 30 Apr 2022 03:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651290838
