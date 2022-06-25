Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D37A2907
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 16:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656175612;
	h=To:Subject:From:Message-Id:Date;
	bh=7YeYupuT2ek8NqtCs8jRIMIyl4/sy/wZ6HxkDQVUwRM=;
	b=QbsJzslYB5Mj9HfA4gBBaGTuy0sIUCrPyJM2GKMhlN9EA5W1B/XJhWHjV2dtVNwt
	V1KThYFJEk1vfTa4kYndTcvNmlP83ZuUnDdXIxXtXR+g8rLAJSdpjK10Ex56pQTRnms
	1PbuoZ7ccKuWlR/Yu3r6xIt7z8lfJmvX/gcxdDLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656175612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7YeYupuT2ek8NqtCs8jRIMIyl4/sy/wZ6HxkDQVUwRM=;
	b=ZYGT6pZzWebe7+YQEKvFHtY5YMUsEj/a4TEp+evOO7KNsFI3J4rQwfCJBY/jR71f
	SKKJts9mOGA54DzH21NrNb1iJp6TzXdxeAIPA7jKaoUC8J01Rt/yKVlSnmJw3nM94wh
	mI/z6321xqkyamb7uuh4Ws9kbeRvebTgfuFkkN/4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819bc25188-86617a31-c2b4-4d70-9729-e5c10cd11f75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55737f3750e70246483a5a186c6283dc79c6fa1be1fcab8973656cd12bd9a6cc
Date: Sat, 25 Jun 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656175612
