Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C592F3D9D
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 23:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653435479;
	h=To:Subject:From:Message-Id:Date;
	bh=zkNPZLW4KTRqVuuIKshIs2I27rih46UnoZISqra4q9s=;
	b=fFBrgDppHDrxfkluzKx20MOj6+6zJ31EZJAuH3HZR9qgdqDgUrHFwMvskw5Om17R
	iPEiVdcnUDnOeb0p/zyzkQE1CjS2S98h/8Wlg+i4D6eYt0Yj88+yU7m2KqxYOvEBa4g
	p74SFJW1uj2I3FA7i2Jw5o29DLkC9lIq7qUNpN0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653435479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zkNPZLW4KTRqVuuIKshIs2I27rih46UnoZISqra4q9s=;
	b=N/GwoCKxkOyWpihYNFJgan4iN5S5o3g2qdJBSAbwMA9T63KiK14+NDpXouVy0Zu7
	KtcP0yjRl2+p1k7R9C/7Xz/gNqNuEnf5JBRAEV3neg0rFyQb5HeaHLlEJ7paFEppml0
	KMqtfv8mr6fNADgM6B6MY7LNClSIDVDNoehPqb24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f86f350c-33e835a5-8e28-466a-966e-8211d6bc5345-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0360c66135ee83c9f13bcb3d67213458b1ed7770a09f87c8481ba3a869b47c65
Date: Tue, 24 May 2022 23:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653435479
