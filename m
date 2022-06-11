Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE9857A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 20:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654978199;
	h=To:Subject:From:Message-Id:Date;
	bh=EbztvaGPC27lY3hIE2Ye9Zew7KMm23AMLj0DEmBOMcY=;
	b=PWZVQNpY+sy1NbywD2ep2zaOPnzmrOwaSWyHXmYvsbAHJPFeyQgDkX7v4WuPYIqJ
	A/ixz8+zc9TpRNXLMJwfjPXj9bwf7H+v9J3QaY4hW0eLGsb/OjxyHTfpWIim0l3HSXi
	tnAjiZzgCiBlTLt6XMmlZjA78TYFAtjmDcxabomM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654978199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EbztvaGPC27lY3hIE2Ye9Zew7KMm23AMLj0DEmBOMcY=;
	b=Ciw0TOcYmCZj3gnF8fcfg0v0ITz06fSpn6fzCFktNykIKEewnLySIXO0UYdBmX5v
	urvFQirhIGknLlCE7MreSYs/87e4B/GvZT5IPlJiI/4bZ9Nm+k9dTUi04Dw4vG8WLX+
	r8FHzZSKH2Ey0DvNQfnG+1T3sqGDvNFCtsfHZBv4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018154633ed7-25cfc6ce-793b-437c-8d36-08b5b82e9d62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 518f166f314418ea19d1c7abf2c12d821a82468dd92c520c0e50ee58fb462467
Date: Sat, 11 Jun 2022 20:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654978199
