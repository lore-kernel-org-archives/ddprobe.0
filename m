Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70C3A1B72
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 16:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648051284;
	h=To:Subject:From:Message-Id:Date;
	bh=riMS8lV2dJ6b9dMVoWi5/EkcvV98u9L2y2shWdxd/mA=;
	b=hwcFq5AwgTbCeOJmueBcWHasyl5h4wvA3NiNKd5zs1p3xjuk9rSlzYVL55AfB6No
	mWc1x5gEtx4Qe/wmzla7ta/gTbCufC9BukeKAxGiRqMFe7ge1gn6bpiqTFqkPF+eCyO
	sfi2Zr4hmhuqRLxdhbYQlntEWNnWupYCCpcCZecU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648051284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=riMS8lV2dJ6b9dMVoWi5/EkcvV98u9L2y2shWdxd/mA=;
	b=elwTq9cp7cwR6XVKgJOL5Lwvu6y/tHTdqUlb9djvf75t9bspDgNyqqgRaGDr9Ppk
	qhwTwLH4HiO3X4PwRvZrmARsXyIL6lXQJaK2eM4XZoe7C4tWZH3hx3JBY+GDxc+d9Tw
	WzVeo3W2gC9C/AYe3cpCtaSzC+G+LZG6VqioY/I4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb782eb1e-6016dc15-bfec-4948-aedd-9498ca8fc46d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abcac737b0440ca3463a0d4c5741a618bc06343d017f0d60d88d5ead718f1bd7
Date: Wed, 23 Mar 2022 16:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648051284
