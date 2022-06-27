Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F3E46A2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656351412;
	h=To:Subject:From:Message-Id:Date;
	bh=AqouKAyn8r54pGldjNfYiR7D1XxSyUBPuEHI9nmTE+4=;
	b=IlkNkCOlIfQXBrf6Nom79hbdeW7nQRUODY8Fk8t3UhkUO9Rp8XlMy+4aH1EZYfKl
	la3gq110vRJ2wS4o6klkgONWQf+zxYW0AgpsITfcYTGOYPIurjVTHrlO95vgXjrANy8
	sl6jQnIaRsJvIQ6aVNydL+OenRP8RR7tBwtYIT1o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656351412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AqouKAyn8r54pGldjNfYiR7D1XxSyUBPuEHI9nmTE+4=;
	b=kOfM1aQ/qampCfqboEcQRyCUeubBdiJkdBSjmeClG5FC7FJicC21PoMDZQphLnuN
	OEfxOjClP/P2XurrJPgj4Qg/ae6DEUBOIfn13y1F6t33RRqFMJ0MB9XMbMbRmXVfnSo
	JCcYlEhhkU8h2XpATuqwovKxzjSL+dMp76Kbiyhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a63cd05a-4f19236d-54a0-4b16-be62-c58ab17351d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56d3d6957f01341685c0f9cc67d49dea04d54bee82c79f6cc5c6ee488f60d3af
Date: Mon, 27 Jun 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656351412
