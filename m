Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25440EC5
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 11:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652702039;
	h=To:Subject:From:Message-Id:Date;
	bh=6G7caq/L+okYDQ5QMobf1kMajzW2xnvmA2AlTqOAA0A=;
	b=CkHHo+g2mYdUlWMJJ0PEQ+Vh0JkxEKDfUBg1e7FgIvS6yjAky6oGwBtBsvOt6DXm
	P0PsyRKYCNC+NLjA9sQKwkRrVBr3ooXdx6EEHD7Rg3sI8SM1mXQUxOnPn9nYwQa3Vk3
	zfBIqGE6dIwe3hL1n+IUGghrhr/SfpWNHgYDruPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652702039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6G7caq/L+okYDQ5QMobf1kMajzW2xnvmA2AlTqOAA0A=;
	b=N2BpO27g01f0ZRZBJsIGERqvROs94XjjtfkYp+7QmWVotoPjLuiMVDX1RgasKsqj
	XF0gPI8PHa2lfJRlmC8qJmC1cGhB2D/2mJyhLM94nNBerXiPc0mKLyJB6h/NfpJdRiP
	tgtyWfY/WEjKNR0CqvVXKRhYao6gM4ly7EYtO5EY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ccb7cd15-2fbc0723-6623-4ef9-9780-abc268d26145-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1566aab611017b5b0009cb403c8c6b3224a616c0596c09b5c21267b9a412d3b8
Date: Mon, 16 May 2022 11:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652702039
