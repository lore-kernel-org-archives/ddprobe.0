Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D85420E1
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 09:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652348939;
	h=To:Subject:From:Message-Id:Date;
	bh=NB8AmqAMnX+lf5aaVth2TV1P5cT9Pj2A/oBneNGkY9E=;
	b=ab669hHy7esF8nC6Uxj4zgcue2thqZwcnXJe/EFgQVGhE/GdVx2wI3Gi3BNbu3zc
	SnAUwv8e3UNOOR/RAIXCNXyh+y/6La0i/UQ/ftLQPf9VMSD/FYcTqj0mCzB28xW+aDt
	XIZNpiq4816UPJ6GijrLfqPS+vpRWbG+V4siL8aA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652348939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NB8AmqAMnX+lf5aaVth2TV1P5cT9Pj2A/oBneNGkY9E=;
	b=RnRibXHxiY8tMTUFerEJA3S1HwdWyQP77LYHDt5UoVw4UOgH/FQ9lxQavqTmKfL6
	yy90UyGbvVtTxNQIVEjwPyYUpSyqj1ZahENI9eqWzsRQRwbeJKcLz4PX1dN9Esrivo8
	rP21n1SnHEBiajowosdnolaoEHKfXTvaEgt4zZeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b7abec1d-dc3e1411-5e46-4d11-89f9-d2a43db74db8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf55632b6a784743fed9b41a2e223eb846aba77611892b310f09d84e8ec90844
Date: Thu, 12 May 2022 09:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652348939
