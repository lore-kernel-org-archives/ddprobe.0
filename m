Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736957E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 06:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645512084;
	h=To:Subject:From:Message-Id:Date;
	bh=X2bIMIdSIt6/9SafIVEGND27Xa/aVqtO7LjSK+MLjAo=;
	b=jg8nOgJdQboU0ZaTLgA5nbG3ZDuTfV/YLfFWg3hJoy/1TSUAcNXqUDIo2mnzTO1T
	HDxAIIr2imqfJtlLz2d2f/Cm69kYHGLBIAQKJ6gjAdB5h3LgxNKHqT6pJiaUe7xYTex
	mmADuqESfpv23nwVf9ku9A7Mq03zqBycy0sXAf9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645512084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X2bIMIdSIt6/9SafIVEGND27Xa/aVqtO7LjSK+MLjAo=;
	b=Ups/1xIf2JVCO0H5XWt7EFSjKQliMdqP2365PpIbBLD7VbbzRzNVGeRHwytM+1yQ
	ajj/y9mdS2SImzuoBl7qQCd1Iz+hW54XxyYLk1vhGt4FdXoCuI8VysDrx0+y2LEUmEd
	qOp9rCCG66EDRAC5p5sboNGpRiby6W/Akxz50b4w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2029cd0e-80abf5e7-9bff-4b52-98e8-5779d9688a17-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bf10814fdd3a6f91e350b947daf4ee7031c8145415bd6ecb764012417595272
Date: Tue, 22 Feb 2022 06:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645512084
