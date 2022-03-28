Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192274366
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 13:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648474978;
	h=To:Subject:From:Message-Id:Date;
	bh=hGhbIoPnh9pAEd1srJV9z64Z0DWe0RTbl5sl+iDY/00=;
	b=F02TIwUxBbqFONNuv+3X/70yZMnvJYu+bSwboFbqCzf8ySzZ/elhK3Enh3sO9ApR
	X/TRrn/0LbprmWMtT73G+hDGcxnzlQBP0ZXtOWZA4d+ty1bLymSmgh1Dc4AqZJsGmdk
	w1Fjjnl3UY+M1DTQNiX0rHQPNeDUoAaE6u2Yeh+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648474978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hGhbIoPnh9pAEd1srJV9z64Z0DWe0RTbl5sl+iDY/00=;
	b=YAl4ofp4iieN9NG53Bpqtr94rGnIaf2QznLaEE8QwJYhz6wYT71NBZK/0eU0K3xw
	E1wxXaelVJg5zyWhOgrSuorzptjCHNC5WKBBDc2+v8mrsiU2XCXf6UX38GvVp2uqAaj
	e0Vv6ojTCsTPgyapk6HgIL7taSUA8nqqR+mkw5w8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0c3f7fe-73f956a1-9609-44c4-a6f1-6a160ff35eaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 953f15623fa895060cc5d5f92387cb31f4c16ca74933f3f0f68779dc1f94e82f
Date: Mon, 28 Mar 2022 13:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648474978
