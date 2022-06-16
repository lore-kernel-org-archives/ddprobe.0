Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4BB7E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 02:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655347079;
	h=To:Subject:From:Message-Id:Date;
	bh=SThpNYsR7eT8xMWPZfDFVhHaDB06/Lo3hWmAXiwGBFI=;
	b=QpgmHAW+Gu9ShbKqPHCf8N8jQwiC87TZxgQq/KvBgqquokB0zVW34+S1CJN7VHeB
	sKrTy3TLAQslwBg3iVI9kNbDlvUx+75sGP7YmGRmDeEEW9cZWRG2j5OFc6ekaBKaMA5
	p+zQqz+AsgG2ezyeNHai6i4u4wAW8loJEK5v5+Qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655347079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SThpNYsR7eT8xMWPZfDFVhHaDB06/Lo3hWmAXiwGBFI=;
	b=UzklVsC1T7MZI5wB8LK6C1jr9OXhY66dHf4rBwArzvmcjUAiNi/NQXJl1VIDHEDQ
	YHS6CsbBXMlUBetGVyOPvbIv16TCrU2jLtTHQBKEJPteeFwLCM+MFeSJwuUXrQ10unp
	f9QdodL8fv2N+DsUJ/iN8/CHbOl/E3ZBNilRxFRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816a5fe851-922f9c83-444f-4575-b3f8-d7936db01f22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46520deb42d1b5c929430d834d2495b878fec1483b98549852c81672ee88a8c3
Date: Thu, 16 Jun 2022 02:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655347079
