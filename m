Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4B97E
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660584052;
	h=To:Subject:From:Message-Id:Date;
	bh=kbftEby1V6ynAyTDVQoka1dGNqAJCBlZQ2X6ycOjYLA=;
	b=cOswArhaZaC+ETX3IbzUbOpcpOoWUmW5Gdzce4Efen/kheX4CgcWtZO0PCT7MzLA
	xjvUXrrRtUim5R74+Pph7h7U62pH/29rI0TBxXHIAzSQzmlJBt1p7mBVZvKu8YH+rrQ
	98YO8RQ1+lEy5WM1wdrsQSLAN4bg88+d+64HeTa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660584052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kbftEby1V6ynAyTDVQoka1dGNqAJCBlZQ2X6ycOjYLA=;
	b=RUxmLqHOZ+dXcPK10BPGRL9PuNuWmuLjf4LY24k4M55zKw+FZObBcmRx0OOxzGFF
	4q9IxlCpYie7L/VyWSYOQJODg/wwBRazULhbMZlpYo/wN6Wkq/6ly4rj8dJoaQZjzeb
	akwWodA31k3B+oLxA+zG+Pl/Fp3XZoUBm73Xnxw4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a285c748-bddccfe6-177f-457f-aec9-78a76e140458-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2aa167af3e8a37f7d2a287309b65fd44993a907b092ba8c58616d055a88162d0
Date: Mon, 15 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660584052
