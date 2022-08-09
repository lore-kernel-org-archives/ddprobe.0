Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC6915A0
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660027252;
	h=To:Subject:From:Message-Id:Date;
	bh=MwG50cyCrX1NAs1d59+cQmCqfMUSIlBK2vLaBDbgB1I=;
	b=dHLnBIBr8ayEylbxMGA1+9dsxyxXst+q38sIUwHyqM3jlk3MwMwWqDdXYokkmoXO
	wozN5OjfwjzEZ0QjjXOSeiQ0BRprYVwPMnU327BUV4kcra0Vi5vjdOBtsaS32FBHipN
	6vVIjTm41z1a4IMTjp2N11kMOLydveUrlib9DKNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660027252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MwG50cyCrX1NAs1d59+cQmCqfMUSIlBK2vLaBDbgB1I=;
	b=UMw75KssBl4bNaYmMEtCnpifzpXw/KZJMb9Z06RGUT6/ucUoaiMxw8KsiIDxt8ks
	vn8JIgK2bivQ1eoWKxV3RI2OhhVfQJdM3SheXe+ToM8pm2Jwi1Y/lWtEZ2F5jOO0+K1
	ThAsOUB4Xm2s1lJg+/CEAdXAKrWwlwcxTMcV+SE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828155af38-4d193151-6abf-4ad3-ab17-14e82e1445d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a6c560ce0a49b284998a4de6532e3a9090df050ab730161a70a50e775ad52f5
Date: Tue, 9 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660027252
