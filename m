Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422D63233
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661026252;
	h=To:Subject:From:Message-Id:Date;
	bh=IHcutUX9QSKQ7cBEsJRtJQhHwpYt/sn41bLYW8WYHeg=;
	b=I5nl79WXHMX5g2gvGGopOPy/sNqoVx86b9CRXreVlu4xjF9biGc/67H8baf++j+s
	ZWuaBwp7HximrRnfhOjGKgmH8fm+2NxDfwBXFIH4RKW18dhMkY5y+kYqua1MoN3LEHv
	gCXQQ6tCg7dXZloyM9wxiZf7pC73lflSEswD6nus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661026252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IHcutUX9QSKQ7cBEsJRtJQhHwpYt/sn41bLYW8WYHeg=;
	b=Kb2OkzeFuVmNmn+4dpuuabqgJNEhvmLZwlu/OtTqos0oLNXgCkoHC69jx+7bvLZc
	XCaLNsfzGJhgewDCbL8F1Hy9ZcdIp2lK7d5Y69Vq7ASdvY2JhNKRQM4OP2qVSh+e1Hc
	U98J+2nNcQz8jRN7J4aYW+E7ywvFAYpR2yuuG1EI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bce13714-76e9f4a5-6873-44f3-b81e-6ba29d34bcd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc756e535569ad8a009dbbb33d0561cea901dab8e66e49a746c32c4d7fb39d07
Date: Sat, 20 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661026252
