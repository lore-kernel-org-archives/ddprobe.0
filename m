Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFDED15BD
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656988612;
	h=To:Subject:From:Message-Id:Date;
	bh=Q7jXoWq1iVsf0TCpfMAbk6v07hKTWMuQb4FP8ffaRgI=;
	b=Pw2PafjRylIgqpEdMsuwGuOow6Jmcubf3A5NeCj5kRSr5f2+ZkafI3ZCjOw3Kafb
	qLT1rQ7c+cGx3EY+kN78vkVe9zd97IbdjaZzewQi6S+E7RvhfHk0s1B/Vp9W56dTPFv
	ITNFsUrXVOmAETiaO0eUFx50n9k0YGwEQ5sKrWu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656988612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q7jXoWq1iVsf0TCpfMAbk6v07hKTWMuQb4FP8ffaRgI=;
	b=YyEDdQ88aVXdvyqiZwvIrxqSFs2FhYsHra+3Dty+5V6YgL6H7G95bYoP3uhfsfiw
	RC3XJrRaTr2jRfNsPnEJoh550TwCswT3qvTVH/4HBVFhLkApTkvNxLCa37ODFcebQj2
	1YRSP11/z9RLP0oaX2vmiSOactxXJmJF2RYj2Hz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cc37b69d-f8c08b5f-471d-4cfd-97b1-30ab8f748207-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6f8043185e740c86280c77a9a0702d580098b6b0739c9ecd4519326653e95d5e
Date: Tue, 5 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656988612
