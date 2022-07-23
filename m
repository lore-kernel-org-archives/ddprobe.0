Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2787E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 18:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658600212;
	h=To:Subject:From:Message-Id:Date;
	bh=DygfaU1kniPQrTfItP/e/0ZWaqUDQGn/VkaA4reACd4=;
	b=U2nyy6w48gLNh23Pt7nxiAYpRA/9H9zyXPJyfXLn/tIEynZWJrQ3rnkMST1gEaHz
	BXu6GXa8ATw68cSkTE/XucZUGScZsCO/IXt9V56zZyDkWA0nS5kLNPfe+U0Ahdd1LSQ
	4Ajqnxp8VkkOUPuZ3KCrd8WEzXj+/Sn2N69k19DE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658600212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DygfaU1kniPQrTfItP/e/0ZWaqUDQGn/VkaA4reACd4=;
	b=Al1L6mEF9n7eW+J0JTiXEaRh+6pzpPVOpr49dVEGvWugK5YhL48ZUfvJinkLRst6
	Xdi4GhlQDnwieVLm8xa9/NrNllQ2otoOIrsuPS5EI9qLK8IlbuRm3hCBg0uxRR3Jj94
	Q4Fn4wP/9rtOcqlYLHTNteogDImcvvwEMjK/3Kxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c46c742-29c813f0-8f78-4730-98a2-1f67806c9aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54cce7713643297e4934061b65b530beb1be307637c5ff5a32e26446b8a950c5
Date: Sat, 23 Jul 2022 18:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658600212
