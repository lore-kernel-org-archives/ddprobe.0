Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278014C7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657916812;
	h=To:Subject:From:Message-Id:Date;
	bh=JCt4Yqb+cEfqq18bdtnVKxphltBp8TevPR/YKC1QKHk=;
	b=VFMPZ0mntXNZ3lOXNwq0WHN2gKp4LLrBMqgDc6MHGnForl5/LRuqw1/qHpMEKBbJ
	2DG8Cu/+X+Os51KmwEwAdKLSq9qjg20s+aFGzktjtFr8esLvBdfiw/ZLJkFNKAanvGj
	T9GLo3ZkYdNVtcfxAsx2RBE2hmU4EEsSkUhOgOaw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657916812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JCt4Yqb+cEfqq18bdtnVKxphltBp8TevPR/YKC1QKHk=;
	b=VIRvtc/1FPGMRrkbQ64CsVNYw96TZcJKRg2FRwGR4vWayxXzeXW1vLOzwZt6f5Qo
	E/VsFzJ9heFkjvCtLog0ldDcskPs7Hwkk0/49U58yutFUfh3mkgsRUJb3x/Ngq9yd0d
	hSI0gj2ylPkUYv5t6DayXo1vimlG5MXGoUWbHKCE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182038aec19-e99f5097-780a-4dc5-8b86-ce06cc97e51e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0286b2e30c974c2bd26a6f7f027bc350e789722f7c8d2f38b97139eb6a5fa548
Date: Fri, 15 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657916812
