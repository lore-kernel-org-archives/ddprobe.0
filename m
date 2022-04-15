Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADB419D
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 14:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650033238;
	h=To:Subject:From:Message-Id:Date;
	bh=KDeDS2JaUZhVWwuDSDyXSpP1TRQBd+n8PIvLVhlb7ss=;
	b=a6Q5Pu/5Wb4QozBTxwRdgIkaLG0G/IisnGx+C9tFTig7p2A2o8GFM9+gsxphe1+K
	tNcm3r1eT20h/wyMNAPgQ4d96add14P0au66lUah9RTZa6KDqb/eHP0ml+iCSbR2olG
	xSXRJbjT/Fzhm1JGm7jecl+p2d7T3c+TRg0+nYLI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650033238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KDeDS2JaUZhVWwuDSDyXSpP1TRQBd+n8PIvLVhlb7ss=;
	b=R9cRvCKWWuBx2GYpzNUuEFdRkX5ANvCoLX3Ler5Mj7MIzzVY+1D1+vfN226c2W6L
	2oJ6r9TNNgQLb3j3mGa06Zv9Wos60X6VuOz7gVQOoKqp0kF4HBx8rmyVJItRHNNE8Lc
	Ohb8o9Kj0CGN13FB/Zl4aepzhK29DylTVmAcblZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802da5214c-b5722157-03ae-4534-8f0a-5313e3aab9cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a208e322b09d1633ee8ff4755fe02908afac8d0729dfc097182bd38dc63777e2
Date: Fri, 15 Apr 2022 14:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650033238
