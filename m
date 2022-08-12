Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5982F28
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660339253;
	h=To:Subject:From:Message-Id:Date;
	bh=wtBnpiSRTSxzMc/uvdU8l4TqHHzZ6NqYFWV2hf/mGU0=;
	b=BuyK1A/2WzJ1n1w+ye8YbvenEWdZL4Ypjd9nm7TYv4Bf+MHXYvOEizbBvTNQ5mcr
	MMs7ho2LZCqDbNU0hY+7WNBVH/qHa7KB2aj5dVdM/wPFFKj4Y14EM0s/1cIPiqPhUqW
	EGl72GW2g7BtWr1cB/QahEiAaPwwrEu3jbkRTHkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660339253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wtBnpiSRTSxzMc/uvdU8l4TqHHzZ6NqYFWV2hf/mGU0=;
	b=SqepA0ypEAvIkizn5c63suRhSRUnAKF0Ka6jR2wru77aKm70yiIGdhFoBtwQidTb
	GGT3mBmFoHpNYYpf4E88OBNSJIk6/TjQqXHGU4oawSgRTy49ESk9TtMRwfl3YcJhi6j
	watkQx6pmfpsyIHBeD3kHx6USgEYTeGHR7jj5YXU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018293ee6d80-d5101405-f7d0-4129-85c2-bbf22d11df62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aeae680c54c99e595dc136811b22fa883c02a2b6c071326977c15ad18c68198d
Date: Fri, 12 Aug 2022 21:20:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660339252
