Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3077B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 18:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657392412;
	h=To:Subject:From:Message-Id:Date;
	bh=qeQ9JzCuYQspEbNJDqJEL5v3Tp7iJoVI1o0O1ySZlP8=;
	b=LjRzL6esqaB+JfNFzeYDivg8orq9GK0rOY7ICRepFyYzUZtmHQMUbuAT1cw7MJRz
	L4Ac5f+FfATXmBG/G9V2to17suAceAYgJI/hkh1sQ5zxkNpA0HT7rkQor2E2xZWqF5u
	QXFf199T9OtlWV5SU1F0RojkJl5sNh15VIjErFCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657392412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qeQ9JzCuYQspEbNJDqJEL5v3Tp7iJoVI1o0O1ySZlP8=;
	b=MWHjISMGJ37ZH+t1a5jpDjLMuYwcDYcX/p8rSQrCyf7oIHUpidn0y2W36vNrt8h7
	Pd4GvFQSNQbLMZxLExDJoZp3jCBZHgN9dLO1MyuyX1OPclHNdhETIpwXjLe8LM4hr+M
	aLM70QAD0O+rW6HROcmygQAw942VP6bSb2ee+v74=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e44936b8-cd2c638e-3ec3-4e31-9120-e8672c1c50e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78c88c61fa5c9470e91d0a0938a6f408fe3813f5a9fc3b7975f3dd5165795376
Date: Sat, 9 Jul 2022 18:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657392412
