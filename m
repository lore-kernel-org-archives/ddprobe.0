Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 813F57E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 23:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645485084;
	h=To:Subject:From:Message-Id:Date;
	bh=nZ/xxPHOza5fJ+GqKjCV2J5WpeV5aib65jOa+BwIyDs=;
	b=MJRBpaY6e2AFXJVTurwAXhuH8s49xLvkPfYm6N+AOkfLgyeCdB2OyURoGnTw35J6
	TX8/Bq/Yj2m4R3hJr4j8FijyXxT+eou0QmvdJbtaisa3bR8yhyfoZ+Nnf5IW+75nVfT
	TKtofep0pDfYfa35pzYui+rzNacll0reNCBriDy8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645485084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nZ/xxPHOza5fJ+GqKjCV2J5WpeV5aib65jOa+BwIyDs=;
	b=EPlMDdE2N7mH9Rv17Q90oCNNJ/erlxTICzxmHFMJMi4KEb76qgBUWZeyZIhDNoKZ
	KO3bOwFaXkQtiTVYkp9Rg/v2cIwJOc/hhvw0YMTIMlkPwJtma05Wtt/r17w8l3uLKL5
	vILJnCjPsGPRQ8JyP44ssJBd4O8cchlZkEBh0PIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1e8dd046-ad677ea5-9cf5-44b2-8760-e4f908fcc129-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed16ff361d8e72e039914844f69f8334c2000e5fd87ed788a7ee297cd8158bfe
Date: Mon, 21 Feb 2022 23:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645485084
