Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2821368
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 17:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653500819;
	h=To:Subject:From:Message-Id:Date;
	bh=ekfo9s0HWvc5ngwiDuNSGk/sfG10qTJGRlx8AX4vFUU=;
	b=S2H25darmQ318c36F9+fzvUa6Jde9smX5SQl6NNva8QD/PaU5sCBG+j+sx/E6wM+
	oj36GnovI5Hrw3Z1X2Z7WqBhpJlkH1fYhHhjX2TtcYeO+kMNPDDhPjDF4x0Q85zWtKd
	nUg7L4tAmcLJ3on4YGkSjOuwIBZVpNdY3fMIYmOI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653500819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ekfo9s0HWvc5ngwiDuNSGk/sfG10qTJGRlx8AX4vFUU=;
	b=EoYQgNYrHznoi0e4sumLr9X87mr52U6J8PGmY8b7L7Ff1M8ZjmNytnHk4zEDx9i3
	K//0HTmMRuLmXrPSCcEBhzBgYqgn8pYB0PnghRPUmBj34RxcmAqoyVt5CN6kKK8RGbX
	R/BmZQU7PD4ZljMnPdrsoA/wtGipeGbwF+noHyzA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc54375c-829316d9-7b81-49b5-b6ed-4900c7d8b2ea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f8a420429e5a5d4ae4795fd34b5077869ce7fa105239009ff11bf93e1830296
Date: Wed, 25 May 2022 17:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653500819
