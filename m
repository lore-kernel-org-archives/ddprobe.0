Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4002F7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657136812;
	h=To:Subject:From:Message-Id:Date;
	bh=rN6TsiPyjArFEhFmaNRAXKfsBpfu5gX8uyXH1fmV7G8=;
	b=CsiuyOehhQT/jXIpeQ46aqZGm6gBcGCJJ3jTbBtjD+uLSVOYb5G8ncJVGZCEQFSC
	C3+joVlbNGNqxORle1YE31S2Q/m20umTR2DKZ9QW3zM6JsjXtYiGM8Qq1YEn1DrzL0F
	lMRMg09iMFgFEhSciEF/6hDJdl84ibqwh6tWUf4k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657136812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rN6TsiPyjArFEhFmaNRAXKfsBpfu5gX8uyXH1fmV7G8=;
	b=bZi8pjL4q/bpJYW4ZpTIGWCSYAHjs1MZILNpAAY3+Z77Js1w2EntbTbVuPAqnejk
	Of6oTyP/L3WubqrXra0SupZqbJ8yxro3fcclf5ljo7aEIjHqEeWen1FGxJTXK+LYlJv
	jzMRYZpNnjbc7apvASjyszZYLKs5GWUc0oiwFfKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d50d10f2-5d427036-b005-4d46-8cf9-d9bd3ba178ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee4a550c2dd77e2f7cc2065b09c22121e1c1904ff5e9c3dd679bec7dac16c9c
Date: Wed, 6 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657136812
