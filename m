Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356D865B
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657256812;
	h=To:Subject:From:Message-Id:Date;
	bh=qT7jRhY/aASOjqHZuIJZC309cN02Rot0v0LXRsIc2KA=;
	b=BEfRseb1MuqxzGJjYJ05P/ZJilvlcvQAjSkgbKiE2BwzE4lcEF/62Wy6E14xMthZ
	0+K+S5fh33GhZguWFpABG5zFraaUHu9PedyDutyRL97vS70c5gWei2TVHeZz8fT8q9p
	+SopNpVQVL+CmYJIZvWL7Enf9bnzf60HvtxyVZlg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657256812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qT7jRhY/aASOjqHZuIJZC309cN02Rot0v0LXRsIc2KA=;
	b=QiiOTGq4iYnjsRJD5XELcJxKes5IL9GWVK/uCmUBQ39PckhsxOkCuKOt/E5q2Q3B
	eRNdMk9wX4MAY+bhmUwfKWExtiQ+8eTk2z3vjqp79gaXoLd7x/KHQFOr00YUrqyZBuD
	qAtK/NeyasPJKQeQk0NgdAgPnw64efvl/nTxisGw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc341f1b-e4fb99ab-5c61-4e8a-bba1-383865e6f0c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe76965e7d6bf950736c9b8b8706a3d3318d9c189badc20184a79c6d015ca79d
Date: Fri, 8 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657256812
