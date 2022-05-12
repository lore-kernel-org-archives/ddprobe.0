Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E55933E5
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 16:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652374439;
	h=To:Subject:From:Message-Id:Date;
	bh=ZJEfmxF/WRHpePD3G4rFpX8XjmrxLF0jshs5Q/ek+YE=;
	b=ZQvYvnr127tgvmDQNhu9F8tJNY28xweG9GsV7aUH5D5SqU89UGlDnbhinOVDlcY9
	gcgDY3T3m6O7pEG5tNZVyn6S2NlxqeH7GYiiCG/4icdhyU3vW2t6/GmDq5F+K/wxsIN
	8+tGU5bu1kx8yeOG1z5BftG+w19TD0RzWQDJzWTM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652374439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZJEfmxF/WRHpePD3G4rFpX8XjmrxLF0jshs5Q/ek+YE=;
	b=LzFiFHNlOl0JZa9zq6JpwqDOUoYgk5noJbU/7D0Fm5Nknpf52OPv/DoPAYlX6JSO
	HjOe+ONs5zzmMP/551yNgreyr6JHBPtsRYqkSmTi5Tsl7/0Tu69hDwiv8xCGDIhTfF6
	KZaMN9o7pulP+uWigMUj/+cF8YB7LLyshN87Eqck=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b93105b5-0fa6b272-c945-4709-9c3b-757053a5203d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc92d07735e01bf75fffc3680a0f2d9239b10b49ba3d52f3b2919343fd592ca1
Date: Thu, 12 May 2022 16:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652374439
