Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4194690
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 04:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652847659;
	h=To:Subject:From:Message-Id:Date;
	bh=dNrs3ueLKyoMAxq4ifvEcNCVyZsErOct2BHFiI604/s=;
	b=dDbtuoverIjulClPOalxAcgcGH7xLZJqLHFdh3YdTnAZ5z6IEAzDOq0IH6dzt8UV
	Pf5vMz2uBFed9yijlTc9s5FyDwrdO8k0S1KnY+HgMkKVd31ALgRzn1M9rV5Q6aLGYkq
	EaJadqSnNrVwXLqv4uTVbk+1rULO9bZ2XDYPuvqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652847659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dNrs3ueLKyoMAxq4ifvEcNCVyZsErOct2BHFiI604/s=;
	b=ZyRlfi9I7jAl/f6WN189/Do5hiLw4Zrg31LLu2fQW/S+8KGo8lcrTqfmyiF+EtJ/
	fZyAd8JyNyp1oTE2nWOU9eo6XPZ8CClV94DL9AnhlI6igp4ikhv9NuBzj+Qpm3NNetu
	H3MVwSyfJ66Y6+AJnsfU072OttnNEm+yrvNzv3z0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d565c912-816d93e3-463b-466b-8bf5-0db8f6564089-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40ded3fd40a01af54a7d04b7b7bd2e63582c932ebba372e4271021534250bd17
Date: Wed, 18 May 2022 04:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652847659
