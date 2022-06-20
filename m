Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF6C3658
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 05:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655701799;
	h=To:Subject:From:Message-Id:Date;
	bh=xCiB12GA98+uk15/Cw4Kaf1aY5IX1t38Rjr8Hl6bcuM=;
	b=PFLKLQmCZOpT0Cq0PaXORZ7M8TJoMhjMV/qWTN/stujIYz95ibYqXDgkfRPfZ6Lu
	suTPW1soW+ELz0bDGeJnduPQLFavLsOmoY/qaLKihBtqph/ZFHkC5DuggZyZQHqbxAA
	J3dC3D86dJ6UHxYbHF2azsOEWmGB9YMwGswRwzyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655701799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xCiB12GA98+uk15/Cw4Kaf1aY5IX1t38Rjr8Hl6bcuM=;
	b=graTkCJAX8jb4F5hYX9y4HReUVlAjBsSZGvr4oTDrnMQEQdaD/yPOavyvTy/unkR
	9Hv0F32Bpd+HAB/KF7lnTaHe6Vb9Zf76881Gtre45Don20ZsP+WKypxQ2yW1nlsvHDR
	F6Og31briHhq9j9NM1JkOubtsZPg7OnGxrLy8fms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f84814f-fda0e4d9-68b5-4180-a447-098f45f3b1e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db4cfdb9df077b0345e5e08a6fe901d4f236e44732e0ef3c7a6dedeee8a1368a
Date: Mon, 20 Jun 2022 05:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655701799
