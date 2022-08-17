Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C022F2E
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660747852;
	h=To:Subject:From:Message-Id:Date;
	bh=u2BC65akEJ8cbFb5Ub56umRdFx+mxKs6ajJCQoy4HXg=;
	b=JKGZ/y9gSz7rgMjgUjXiMVi4qvFl2JdvoK9ZXu1mfVmnPspO0KAflzjCKBsRSzx7
	MVuHfNJ6dUA5CHbZbjIoTkMPne6PhFMyHDovF4/NLUCfAzjZZLJyyZc4faLZ8QNvUwW
	Puf42q/mbeppw92iA4ukb8CEHQNUnQyw45BjjMTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660747852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u2BC65akEJ8cbFb5Ub56umRdFx+mxKs6ajJCQoy4HXg=;
	b=cIkIObLVgwlV0JCLGxY3Rr74ntGcNowMqEqu2qzWzUt49LUNHSTK4j38UES4cDgs
	f0KmAYBROThyji3e+y1lNBHsQHVIVduAAxZj944VnLV8JeRArYato5a7yLhfdICAk61
	pVeSWhgEHBmIA+JKAt1a7VikxcVOGhkuqJilk7r8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ac492b5a-fc2c3876-5ac8-44dc-b85f-1eef8c7a6ef9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1dcad1a26d85deb4196fba13a66fb291d371bf44671c0f6650cd1e14f6a291dd
Date: Wed, 17 Aug 2022 14:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660747852
