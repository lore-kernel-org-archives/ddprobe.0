Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E91087B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 00:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655599859;
	h=To:Subject:From:Message-Id:Date;
	bh=fw2aFV61mmw31uWcCZcMuykAqZk8/uUpFiPyKQenDNs=;
	b=Vy8jmi+3OvfTA3tXsMuBu+QqanxrwxSus8me11WAPmcC8i7qTAhAzpkpMykUhfVu
	jc+zHJk3YMnEjDntno/2oE5FkFZHlu5H78MPKpXjZcf6sP07ahMCetwWPnJyHeIw7qp
	pE0neHiUwgW+SLPr5TouYe86WaEAxQE5xYSPbY40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655599859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fw2aFV61mmw31uWcCZcMuykAqZk8/uUpFiPyKQenDNs=;
	b=ShOq1aHSCa3/ys2xmBVR02lJ607HlC3lv6EE1OonxP/dNQpDl1T2ErEa6B9iBXB0
	M6AQmdtf6wgiCs/D0ob3pasIxifGxhsq7XIqnKOp176uTd8Lvnk8QmgMLiwVPuQo4qI
	QiIAcS+6bXBm79WuNYhJagkm7QWM8B8cptUJvCiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179710637-3cab7df0-c441-440c-b22a-f978f26b1bf2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf54430f8d02b5435bd2e13d277bdfed35633df78dc789bd7fcbd9dd424ba9c8
Date: Sun, 19 Jun 2022 00:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655599858
