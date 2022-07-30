Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C72F3C26
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659196852;
	h=To:Subject:From:Message-Id:Date;
	bh=pGl6zEdbBw3RJJ5q97GrhiBKqKRE4ygXUcp47LRSuhg=;
	b=DZq1DFA9t1bNdnUeoge3EMDbhkgn58rzUlbJxzNvkOHS4+xAfvmxKCIkSYGbJbnl
	4w0y6Lbv4y7jr6+hcNkevELpTIJBCbfhPWuQSUpKwZqNnp88zS0YVhPXmir66sk1zGH
	rxv4fuNdJ0ZIKEEn4VyMD++BuB3d9M9cqmyfGoiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659196852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pGl6zEdbBw3RJJ5q97GrhiBKqKRE4ygXUcp47LRSuhg=;
	b=bNudC1gcx2gwT5X4GLfDJVUrFqBLCeVRHEypEGXjDcd8p4otm9P4PMuzvU081jgw
	I7zVhdi16yZSQerkdinEKiCJ/Dco7hn1mgQ86iz2L2hIDgkL0HcsHsOSxWgOAMidi3w
	SBsgpRDr4ysPHY5q9PoAKtJ2soLw+DsbV+SDf7n4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824fd6c9af-acb7dc2f-46d1-4426-a306-479f2fc03fbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2208df5e26043d377537e15dd372cbfd38fbe71c8769784e00f6188b72b86f9c
Date: Sat, 30 Jul 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659196852
