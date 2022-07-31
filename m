Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4F315AD
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659250252;
	h=To:Subject:From:Message-Id:Date;
	bh=btmHCobgPxlE1fLgwtl1E0yeUULhl5AyP7ik/kmvSk4=;
	b=aZpWwTU7P8px9jRpktb7fL0oQyRV5kXtw0hCxvm6aKvcr9qNgTQ95ZGIS1REMcIf
	S0OwK3fEGUu+fPl7aMSbyNrg0yzxx6vZcWt6ygNbkrbCuqgfZc2nMaUVnRPYl/mqfEz
	gFo5qxntWEhcUCQ01/bADWmKKfRa+1pleupLqjJ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659250252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=btmHCobgPxlE1fLgwtl1E0yeUULhl5AyP7ik/kmvSk4=;
	b=Eq9SIiy0gaABkfWzhNnkH8/cjllpd//vvKpGC9MBs1Xqur+CvXrnkn38B8Arm0mg
	B0Rk8SPxP29+WSXjQe85PZ49PF/6AjkNKClbgSP8k6sESKU2nY/ebfpOw09mcaY75j4
	Afba1rXw8VAlpiY5qBTbe9196UGuAc9q7tcoDs2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253059b2a-149159e3-a763-471b-80e0-9b08bd4fe2c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eefea1889595baeed92012041a008f388106b37818e30e9700d7a75c09e87721
Date: Sun, 31 Jul 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659250252
