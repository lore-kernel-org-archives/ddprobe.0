Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292DF7F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 08:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655022659;
	h=To:Subject:From:Message-Id:Date;
	bh=jJ8Z+umNn21no7gEElrzrAtp5hlaTrHhOop1HW060QY=;
	b=c0qIrYcoIMmLld4u2y2r6mWhLbQ0ol7M59KwJKS4zvIloRIZqQfS0r/++upIxJFu
	by2DIkESvbh78NtIO28JAjh5/Pbiy26h/dSjzptb0PhqgOk82te2yBXo4LHOUH0ZOtM
	wFQmdtGPfUhvhccq6aZ9sNTe899mJpC8Dy7DZ5tg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655022659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jJ8Z+umNn21no7gEElrzrAtp5hlaTrHhOop1HW060QY=;
	b=LYGdgzPEQ/aZ9uk/K/qqOVWnDsbdDPW5T6BsYq0ZD84Lf2k3tFnHxn9TVH9DZtPJ
	9CWvGCFpH2jXvFk1X31xGPUrz6B10nm1Eed+WlLyEEwh1l2VceF8ymb0SZHZVnTiNMH
	0NM+Z+ThEghSxlFFsF650e0j9kmVEVJGX7+Radis=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815709a6d7-df638489-db5d-45e4-8d47-16cdc8748d12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0381b28d4d7f301353fae1ad86eab76451d6630c26ca5e427359da00f6c94df5
Date: Sun, 12 Jun 2022 08:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655022659
