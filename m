Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E945C7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 07:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655537459;
	h=To:Subject:From:Message-Id:Date;
	bh=OsjjMIeUGaW/OCHM0Fixo0H0gx4gmhiqUcZzOLEGGuI=;
	b=VzaMgs/V11huoGdqkQXibK7mFqf+wAtMF29k1Y7pUBeh3jeCmoTfl313ytygyW+T
	17Ponfb6CMCtOwwF16h8dJhz3/N5XUVtz+NArcbhmynY8vfuZNpqOPNE5gE0cbke0E4
	fbLEqqZDrwhenQN19NhxKwypZo/Tn4XwYLHYPcHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655537459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OsjjMIeUGaW/OCHM0Fixo0H0gx4gmhiqUcZzOLEGGuI=;
	b=KCJkj6EWHz9mC3UPSkuf7DdfFvAebLRKQhH57YpuDhGGNDFO0bJ9sq8fKuNwmtgL
	dhdtXWDWb4Wt195oLp0OGKyF+3H3fq+YGcBBV+LCJg8hWDejk4KLiDwNTZKmPLMCWtr
	lXSnUjPFrilROvGdeGleZyOslaOXTpgrx3/NrgAs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175b8e054-d4d86017-8d2c-4b5c-be6d-7cc4a40dd153-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdba9512f0199649193c1233f3ae6f5d9d35220c6e2ff874104c3ca83d15b4dd
Date: Sat, 18 Jun 2022 07:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655537459
