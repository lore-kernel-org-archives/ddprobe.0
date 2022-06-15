Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6EB87A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 09:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655284679;
	h=To:Subject:From:Message-Id:Date;
	bh=LqV59qbHUIXPT4OJi0a+tWxFSCtfb/zBGpoDy0DW1OY=;
	b=M1ivc2SlDV8bVGpOKF1nJaqXCTkE1tffDgif9+EQw7o0jUAy1JNiQyzqJQ3DcQ/l
	e0x+C1/zhOOgJQRdrclqCJmKH55EKeJ2N/2vV4U0hs3Vthvqc6YCKroazIyhK++k3x5
	B/e12aiMHvvzTw7Gk/qVorwSrjgikuXEaGSJHrf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655284679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LqV59qbHUIXPT4OJi0a+tWxFSCtfb/zBGpoDy0DW1OY=;
	b=Zr6N+hTKMjzrExuRAlEb8OwyJwxRxnKnYafzKEqOM6U/tO4Ft1d6HF4RPpmu8T3Q
	EdFoeDsMChcyKXtpYtM9GMflQLiU+W7pRTHk8F82Zr6h5C9xGy2g+mOQiQrh4kiIdaD
	7/L/oLPqm0t9ZSkqqFFaeQph84zYPK/tc5/u/ABA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018166a7c25a-9ef984d6-cd24-4119-9b7b-147e3bbb07f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41ee65a55cbeb3b039e7f9e9b83094e24acab9cf556e551bc31153639ce634f0
Date: Wed, 15 Jun 2022 09:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655284679
