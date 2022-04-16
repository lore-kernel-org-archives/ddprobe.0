Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6F57B
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 14:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650120298;
	h=To:Subject:From:Message-Id:Date;
	bh=IFi+cnahsVpZ1oZKi/cnSCXTHVI2pZZZ8R1vt2Z5eWY=;
	b=UC2De3ohDLhvPKq5myy5tZ7pWgmbjSn+9LfshugfKDSF7aGmUjeRe/Fq/9usxDQQ
	nIwBeXBm3CPoXsvYgeGAtnv6Xor6vs4BGHeYVZpRCITLFYbPBXH/uBR2HyB/63H0+xO
	8hii5bY5tDDOO6NChEAcpaFPWa18aBrjJR7j0RXQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650120298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IFi+cnahsVpZ1oZKi/cnSCXTHVI2pZZZ8R1vt2Z5eWY=;
	b=GEfwF29/acHUk2qZKKfNZtIwo/bZqEXhy6oaz5Ir/PUH+I3mrn2EBDNiovjEWZvm
	hqO42ZOV6iriolL2+y1xakCYjbrAbD54mM5uGjK1XThs2JnbeZUmBdcgKt1Qogvdxo8
	eCmYp+ARtdWtFFlj4WpUdr0asUsveKXeyvkl6Smw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032d58f32-eab9be52-64d4-41db-b016-b596d3f228f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39419c47f9bc19d855d5f9e2b5c77671b444df86f07a4c8b3188ef66c42a8ffa
Date: Sat, 16 Apr 2022 14:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650120298
