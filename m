Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B45AE4400
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 10:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659088853;
	h=To:Subject:From:Message-Id:Date;
	bh=wM+KLbr81T137JfEokWecWRch9wqlzgj5Jo3wTL3Ue0=;
	b=EucgdYpWGD9IKGi4PsEC9o8Omg4VKzuUUmTHFI4e6NWWqdROKhaWcgYR0EvQgNsf
	LyZCmBTUj80TGrOVWeHC16gBy1xvbBGRfWnJX8EENP6xczlFc5w8Gr3HZoOUCwSQ0lP
	SbS5dYekPAs9nhqbWRBy/OPZTEJJKEMQGJ8RZjG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659088853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wM+KLbr81T137JfEokWecWRch9wqlzgj5Jo3wTL3Ue0=;
	b=OdF1kWu/K4Lhwplve5rD4mc1NqBJMbKreMXqw9FxTYDo+XNv+8tuXGfTL0saB7J0
	8YElgi9MWLlxGZX4sg9TIZmiJmoBs8JTqzrnL4Cr9z9y9vxWfoAfQQuDfFoawFPqdce
	WwEqi0PHlietPXeiuJxlkYeB7+JmaDXdPpgts5uA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824966d63f-18779eb3-0a4f-48b4-9539-6d00bf54acc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48704bac85bb0cca6867ddcea2a3f9a35103f859f00ea1b19784d8161258c8f7
Date: Fri, 29 Jul 2022 10:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659088852
