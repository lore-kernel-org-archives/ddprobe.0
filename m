Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134187B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 09:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655545739;
	h=To:Subject:From:Message-Id:Date;
	bh=5r4QMNwXUQ2YBMExdTtD3L0laUE9gAZVX/KSGveM+0s=;
	b=canTwWlLxml/oMZqbG2bKdHjlv6JKoSk+R/Bg2A7fLzyuK7TyhLxbOU4VVtOlZGy
	A4mhfb9qslaKbrDkf8sKs1rkXbnT6v7TD1y8u+0trc4UjhWnfKHd0DwvuU266Ay+E1O
	/KoY9lb/LTDbrpOO1xf/s0BJB+SFoeAFM6vLDTuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655545739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5r4QMNwXUQ2YBMExdTtD3L0laUE9gAZVX/KSGveM+0s=;
	b=VF5iTm8U1RIZsJ0qpdStubE/KUUDsODKZ6FTkdDHcKnDqjabixpuyHD8HHAxnCGe
	BoPZgcjbc0rLq/h8odZ7lzdLC7WgulcH4FBAVidc8x2cKuGq+eV5zbYacUyIwUbnr9g
	PW9wuRGPeh0oAmgDX+lHt+/+ysiZY8xEW2k84oSM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018176373889-952ceb7b-7b56-4fda-aa1b-4f1eda60e199-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93e4a7134ead36dcc9d39252d21c953814fe6dc4c7573bd5b5e7a25d46a315ba
Date: Sat, 18 Jun 2022 09:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655545739
