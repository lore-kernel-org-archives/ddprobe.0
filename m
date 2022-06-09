Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131A67C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 12:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654778159;
	h=To:Subject:From:Message-Id:Date;
	bh=9hUEIh6yyISC8IbRuyDmUg+Ew4+3CwpmjSsVXheVAH0=;
	b=D2wM2jQr692LpemgZ7mC52qdxDDmEhBR/M9ZqIPf2xPDmQ26o/eklWU0bMQLEw5/
	pp6Wzu2eg5X737Enwg0TZT8RieYCxDcd6OX/DXFjwjHwx4QX0j731Ht75asLFj01kL9
	Gsk1jECQS80fWLGCjr2g8/05GHLAjouKhMrFbN9c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654778159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9hUEIh6yyISC8IbRuyDmUg+Ew4+3CwpmjSsVXheVAH0=;
	b=ZO3qCznEn3wmCRIFfbDZvZboc3NCJnJ028Qcbb1MyLHod6bbLiuPCkhj73FBBiVv
	CIzQyDC4XqsYh9CrNG8nOmBD4tgVzEUu2yURRi0bMIeLVoynSF64JlfuXV6owrCDx86
	3yxVaEqHR4cPpy1vbBCNzUmrWWlBKzAwnsCJ6GTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814876e098-a926ad1b-f276-490e-9107-f8caf2281bb1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a8dc230ed4e41b9a721dac5078d5cf619d065f2813e4d072ba0dff09dc6ebd4
Date: Thu, 9 Jun 2022 12:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654778159
