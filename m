Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20203210
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 20:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653164639;
	h=To:Subject:From:Message-Id:Date;
	bh=jImjZiS+cLboK8h9EmB4TeH+16udOxwaVAvHwjCrw6U=;
	b=BaJrEgHkWxDNp099WXh6PcquAO+W8Pd8NfIZqoyG2+GA05S4bpsPXBWTDYqEniqi
	yc/Ic7Vdj243k7wzcrmSVmQm04e4DR+tIZld+u0znB9VTdYUfLhliA2ywbkMZa9ptHM
	6EZRgLK6lfNeO/EHJgr75uvxFdBUl4z3lUovlJ0w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653164639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jImjZiS+cLboK8h9EmB4TeH+16udOxwaVAvHwjCrw6U=;
	b=AXZxu10L6iHksJrNkP809mOQp8irHdQsmZBPZ0E6uoKZFpbNzon0UkLGLIR6OtBF
	5PEeSCVc6m6KGJ8lgBlOr5YuV7zxcLhcMGFkGf1NGKaN/KOf9O+HPHPxoJnCDj/NPiS
	6VLIp06F5REhEWZK0evTK/P2zf3+gd8Tj71+J61E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e84a8404-66db17f0-f528-4d78-8d0a-bd0836f28e9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28dfcbcf6dae575fe3b45378c3bc445a200556371bfb5365ff1996045160ca05
Date: Sat, 21 May 2022 20:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653164639
