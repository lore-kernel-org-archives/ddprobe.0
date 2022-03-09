Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 890AE5127
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 21:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646862384;
	h=To:Subject:From:Message-Id:Date;
	bh=MU1jkID55hRofLB0nGjUepDNWAMRmYNvjrekP97o7Nc=;
	b=k2ogwbL3k6nQgsHt4YI0Uo6CsDkBAHX6wFHnOAvbVSrMd3O+7Z4Rc4qrfcI9PhVV
	+0rzB88vkrrON+DwmaNT5EBo/zB79H3dt4BgM/fSXC/Loyh/as4ayAw3iq0bLbysKcQ
	pjsoR1D8SmFmh91fO5n5gegnEOmAPTdb/hBPEdiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646862384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MU1jkID55hRofLB0nGjUepDNWAMRmYNvjrekP97o7Nc=;
	b=kHGP7thFS4vn7ZTdnDyHSzDBp1H9QTvdTaS+sxV6kS+doO2Lfwjzia8I21iZ2JME
	hUyblkXiOCJhdr7+egVo1m586TXpsfXbvPe29MOcn6i/kZKGctB90beEuBtdYnuwFkA
	lfDlLAUYdqlR/LPWA8ypjkd5Ior3aolUjT2M0r6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70a5be9d-17751c03-6d75-4998-8aec-a09c7437edfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d6ef8024449f7857243b2462366dd985846687741968b4a647b654d49cf69d7
Date: Wed, 9 Mar 2022 21:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646862384
