Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1510D53BA
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 20:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657657612;
	h=To:Subject:From:Message-Id:Date;
	bh=sHp4Q9QcTRhWpu0cI3R2zQEJcQVeyEkZXGlnpMBsQB8=;
	b=Q4AFNRPBgfWuXZzGmaknBj18SN6j5x3/1aGtOdpEJdhmKEYmLIkiVmPRw/iicCvm
	K3P+DMMhE2PYcF6sZX4zQ+qwhlGF9UJLD69rn7YuvQyaop9a7I+RBFphmgXJWmIjTYX
	Ns6BzneRNcZan7lJnuCRuysih+9HIfs6pb06GFgo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657657612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sHp4Q9QcTRhWpu0cI3R2zQEJcQVeyEkZXGlnpMBsQB8=;
	b=fmQQ2xYyDTSx6NbbbS2xvXgm2wqFeQkDICjEtDeIXBk6Y3b/P21PVnFGQ2vuFIt8
	hK3W+Wm5YO/cH6yImSzeiwQ58L0OBNsgObMHNH/t4ndW+WvfzJywOncKjR5goIdAsUK
	eBwXDkdx0T+ftpBmNxTav8rVPGbbcxRnlaoRF1CQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f417d80b-055cb249-8152-4f4d-a8b3-6c5dcffaea85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba9f6c63b99f196554ba115e68e4e0feb250d740bbee899e3d9c6cace1ad2506
Date: Tue, 12 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657657612
