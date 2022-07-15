Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518514C65
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 19:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657912612;
	h=To:Subject:From:Message-Id:Date;
	bh=fNXJf/7fYcieltgxr5kgDwRAE7Nfgf8KT79poiVkJV0=;
	b=grZVIPsF0/JoK5MosfKwyuJVdQMfKqgDLiGWG8XmFc7Gxc2UVD2EVLAKf4ZjTnWf
	qH6461OhpdzhAkBCAehjr85yLQhuH18a/mfo1OfWFHeAmRJBy1PYABgjUpmHbMZYyqT
	UZD+36q49dWE4bxrw0C0PWsiQQyf1lZjYVhgdPjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657912612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fNXJf/7fYcieltgxr5kgDwRAE7Nfgf8KT79poiVkJV0=;
	b=LG44JeDtFQBXh6lBy+QsMKbngMbD3UMQWxRvV1yZTUZ/YOUaz/bloD3BCi4eidR9
	H06ebhFHqhSvLS/kAGbqpyerbc/1v7F5eml20Bh+BuzkndEWEi2MqTgYFwiWM91c5T7
	TrFB9bmFiLCYsJwQ7ZKBFwcjSPZCNQxmnTh6wb1Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182034ad5d6-4b3bc14b-62bc-4cd2-8fef-f489ac569e1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67c761c36a312ce03714a77f8e7bb266da8e09c07b69e8332263eec608650765
Date: Fri, 15 Jul 2022 19:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657912612
