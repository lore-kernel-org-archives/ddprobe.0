Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA70A2907
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 18:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651429618;
	h=To:Subject:From:Message-Id:Date;
	bh=NApqLI1l5PFFulZHV/kDNZQ1268jDBEW6MIB+dq7HWE=;
	b=Ri+i5L/C0AWPKVy5DtBCUrPodxVhBCbn6WiN2qVi5tGdmH02XoDF98KjgWAbb5l8
	8RoYMvqup3VcmRu3h+3NWdjefsO/Ts+n4YAFIQLN2dv+1f7OK3wESOEbOS/9Ppf57Uj
	mjoNjroMbvvIEBD2lRkebEa2UEB+MYiJz/HTnXek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651429618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NApqLI1l5PFFulZHV/kDNZQ1268jDBEW6MIB+dq7HWE=;
	b=OEtOZWefRt5e+pQlj4c7+ZkNoxrvr6vBUrzgUDLGJfT5lVGmKOQluuAikfrCxntM
	mIbYKDB8P4EfeE0kwy5pD03u0/R/YOBo0mErizWaSrnlBehvkflqDGj6kkWnzH2h3er
	k9drISmw8jLMGfnpOZD5pyUXQX9kgo0nG1E9jqcI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018080e0324f-ae388cce-7201-45ad-bfc4-4077db00845c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87da20a7f66797030a669b943d181907fade7daecff51b261f1811dd20f032c0
Date: Sun, 1 May 2022 18:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651429618
