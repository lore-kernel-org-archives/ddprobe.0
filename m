Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A08271378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648022784;
	h=To:Subject:From:Message-Id:Date;
	bh=ymQSXjlfiCIWUaUJtNxuN7gaoEyelFmMunl9jmm8Iwo=;
	b=FYx+XARk+fGZwxmcDe2oGbNFVvgaaYXQaNix354gGt5dCsdAhNG7ZwR2IV0pIk2u
	B7KaIePuOwZkEustDB167uKlk3P0MgUvJLvMR2CMryIbRXfovo8/IMo+N4A9fHvW80A
	lzz6qKTX0YxxzXwkx1OaM6MqNqbzf55TxU8Kj1IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648022784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ymQSXjlfiCIWUaUJtNxuN7gaoEyelFmMunl9jmm8Iwo=;
	b=jOayHpfC1F9I9nWTWwkyhE1j4KkLIITrGlxhSgNytIDACDFrJwRz88/cE4pJCjRO
	1o2iXtkg+p2gBEuJFoklzpykCwPBhh98Rc4BPTS4tLWjoeITdJZInwAevJx7OdehNdf
	1BzKcX1C1HvUYsvIUCDwR8y3viiM8igMd9JNGeUg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5d00af7-190ac351-f2c4-40fa-a8ae-32bbb7aec363-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 537586a33016b30febff68510b02f85691abfcce140edaa2f6d986a927d2462b
Date: Wed, 23 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648022784
