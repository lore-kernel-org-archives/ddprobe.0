Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259D17C
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 15:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645801285;
	h=To:Subject:From:Message-Id:Date;
	bh=RUs1kfIT9s6rUgd9wP4MF6NPCEhlmXiw2iMC7BlnczI=;
	b=Cfe183eqzpHEvZWpWRxcDKjWCL892LpU10zUwsBQjsdq6adV2FEfaGRkmFQkSvRn
	Hr/9hMltC0cKDhzv9SjPNGXfZl1tvnNciu1nyJkAjcpnGhxDh/vx4OMtvVM1vR3M5OI
	aHgamD84kZ/JgZFaVQBJ/SwIqtzBYoQL1Lqvs8sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645801285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RUs1kfIT9s6rUgd9wP4MF6NPCEhlmXiw2iMC7BlnczI=;
	b=D01quoq4BoNWZsXLt5QcbQqgM7jg4nngeGt3A6dz1+biDm/P4KJyXYgBPpzZBsvK
	bpOzlPJdWKlWEjCJzWREKIP8JiKc1aIdWef/JszY5+zBuyFRm8wuk8zebSZpL9cN8oI
	heNKf7IFFVzUVWXB6k18cROS70oOohEK1WoRF9pc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3166a470-205daa0c-cf1e-49d9-b1d7-66d683bd7e72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50ab26924afc2748efc500873d5a3c94b15597b2aba88694e1acadb0b337d018
Date: Fri, 25 Feb 2022 15:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645801284
