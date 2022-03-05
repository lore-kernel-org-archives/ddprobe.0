Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7036F2F4A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646512884;
	h=To:Subject:From:Message-Id:Date;
	bh=WJcmWbweAcf6kjFFFagrWtdHgyq3bhag+UTMIX4pjWc=;
	b=RAJTsI2LG+ooB8zz/yFVGH3DVkKM3TasKzQdWfJSo9kjZsc0rMHLVGPJ7cNEcey+
	xHF9WpYWVhfJ0OF75LMlanI2ZUCYNSI6lqvM8i1gg99tAmT2jE5pkVadWtihbAw/0sP
	V8ite13fvbhirvPpQRT+hXBExJJMAVORF2ceyG40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646512884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WJcmWbweAcf6kjFFFagrWtdHgyq3bhag+UTMIX4pjWc=;
	b=RlOWlfp+T+5j6gHePfdUxfTIKrI3yqpVNVT4qqU/ooYhCtVUQkJ84XXRvWBddPWK
	Eu683GBwt+Nfz/+4xGGHqFPj4ZJaIhKdYe5eIvKcv4E6Fc9lb6A0+ovHJjdtEwQipy+
	68sG/3T7wtPKXdeux3Wmd95+aVXpjP1akuYR/uR4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bd0cc2d-e23c13a3-ff51-46e6-9465-cce6141ef7ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0aa8e9263fa2d81540747f174f821b60672f1dea87558ac74660f93cf02fa87
Date: Sat, 5 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646512884
