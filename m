Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAB62590
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646212884;
	h=To:Subject:From:Message-Id:Date;
	bh=Q1ojYG0kmo6ZSll5B2oZajinTKv/DFvJurzs0AOMcGY=;
	b=Otw5m2e3lr5lMcVlxC3Qr3Y4XWGugl8nj7JMN0bFvDx29735k6FVsz7VClWKZ4Lz
	nN8PGCaVPBDbxePj90hEmeKtMee0KSomzmeZo1njmGLrqDe79tapgCUDHgwlWYFL6JZ
	jMV61tvO4TEMOF1NqP6p0XTLuQjatrpqpy+Y+hXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646212884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q1ojYG0kmo6ZSll5B2oZajinTKv/DFvJurzs0AOMcGY=;
	b=OIVQe0NHTT4pmPd4+tAFoo4BdTyrlsRh3KuOn/l2hACTCopYuDeSitsu19yI1Hyd
	UyF+iM4RRkRT7RIBOwZLhs3Ne+0z3FsGHsOijjBony0kYCO/DEGKniWkteQyBabIzUU
	ugNbKQdrLEoKWdtwBhDFmG1dwTCn+qoDRISNOU28=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f49ef2925-3f7078f8-f73d-4af5-8995-3bbc12945571-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f846a576e1f23ce8466a15cca544c0f222a1aedb84167f56d92e7af0435f96e
Date: Wed, 2 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646212884
