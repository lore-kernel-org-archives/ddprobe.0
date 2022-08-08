Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477973D88
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659978652;
	h=To:Subject:From:Message-Id:Date;
	bh=FMnXRdJIVRhL0dpc7/Bi+PMP+QF8IcWdOrKkpQcNGyc=;
	b=FabKAxuFUio0Vf3b7mwGzoM+wDeOon+vByoaa+oQL+xi4j2AgdQT1ZVUrtVMEJHO
	TChYtRki821w7pwIEuKXvhY/Ck0UCzy1CUyQ+qgrWcTajXCFVGWZ369ZDRG5CifvgBt
	9PwRPknQhv0zyJes363yaiPBfeVtzMJxEBC51890=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659978652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FMnXRdJIVRhL0dpc7/Bi+PMP+QF8IcWdOrKkpQcNGyc=;
	b=LZQ2VJu+yE5SY5GPSJH91KGJzd2gQazhjorEUEuhdw8mIHTkuT4X2NWe2b9aI9+J
	gN8p2cqvwzRs5/0bDV39Tpw/ZmhDmunTYjP+1qsOs1DUAXtKontBdEcDF4xPt+qBgio
	JARbeQCmcXO4EdurIQ3vj4bhymEt+zljZ+ENEXu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e701b80-bca33be0-e683-43c8-9ed5-f0f2b6a3c115-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac1f65c043b844a400969ee264c68bb299238710c31b8f175429861952dcd60b
Date: Mon, 8 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659978652
