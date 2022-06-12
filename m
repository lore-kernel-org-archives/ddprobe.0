Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320F27C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 01:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654998539;
	h=To:Subject:From:Message-Id:Date;
	bh=+B3XHdld1m4Guxp5mcyIbWnsykqpgjteNazKQ/EyjBY=;
	b=RNTopFyxZbUBOXBtsN1/D/x5xBMVC+2NhJtwaJPWYUdNHGcmMsafzYlx8Vdij9DJ
	U2es58GjP9dMdnbpspx4/TYzOagyobHTbHg7pfzggDXg4OOPLvnTHXWtvQsio6iYmLa
	YE21VytE06hd0CcIvQU5A11waXHNDsilBjcXgb2M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654998539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+B3XHdld1m4Guxp5mcyIbWnsykqpgjteNazKQ/EyjBY=;
	b=lDt+/PVgV97LSR8dwfQdnMpq1yedXG4FR325WV8RUdQzaHKlj0qF+kSQL3sQeaKv
	QJCr85tA9Sa7AmQ0j0b9dUWxMmy5DNPnDz9p77tlO9EwZjEWn5b2Qa9R1Kiq3PwdpY6
	xRV4QqKXYhQfubwslz+AMtiZjnr0GlXTvnnk+FVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018155999c14-64c076ff-af84-4ba6-9549-112bdfe524b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 479b9eacb367e290ed68c236fb639258ff2d60ff9a19b3bdbfbb77ffd5e6281a
Date: Sun, 12 Jun 2022 01:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654998539
