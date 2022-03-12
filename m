Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8232F36A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647046884;
	h=To:Subject:From:Message-Id:Date;
	bh=D3Dr70DdzhVioZlV1iSq5RTY6i8A9vVjSKttIptZplI=;
	b=HVam+C3kuF3B/OsUV0/uY+0oIsB6Te4awHYBcygSftsdm55NCdpBcxQ/ytfgQMbc
	pjrE+1nbn7W/T3r/jTm9XHmRoglOGEpfOdK8puadxdkrNCIQwd87Mhbknwoj6w6ozUx
	9MHlmWIWgR6/LOPmwKeRg5f2/K94QVbAq9LtGEhk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647046884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D3Dr70DdzhVioZlV1iSq5RTY6i8A9vVjSKttIptZplI=;
	b=OQKLMfWvnbQHwBd7j5lr3s8Tv09xbjt/2XLppMsv7Q/0yfcsFetHVqSqj4Bng5kF
	lpMbgd606583ZcTkIrNt4heh4paLhpBAWpQOiuiZ5b+wMpskmREtNC1fW6pwzVahxK2
	EFPTyaJEGhzZssHEiBZrjB336EZuyMNRN+wAUf6c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ba4fda9-5ff2e7db-d779-4090-8fa6-eec3f995c8e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c751995292a46783c3088987183edaeed0f0790ad20d5ea47fe4e755c816b331
Date: Sat, 12 Mar 2022 01:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647046884
