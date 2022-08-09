Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5129C7A
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660023652;
	h=To:Subject:From:Message-Id:Date;
	bh=mX0PBABvjbaiN963VbgWlUwvCCtYCSHDQJePB9PiOh0=;
	b=QnbhY7T1jPScj3CFMGSCM5B3viBk77hsUT3+sYHqmG9lB1INUiA/mbExORg6Cx+f
	8xBCmcsn+Yw3AHlhnE4JoOL7o13stweFwOFmYRtlipdvoa9+DKIuaCjxakLt5bHXNyh
	QCoKv2Djg1T/Xafv1m1B3D0+0fI4za97943h4SD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660023652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mX0PBABvjbaiN963VbgWlUwvCCtYCSHDQJePB9PiOh0=;
	b=kpnbJyUUFAkOEd7YjSerirVCXaBccNtrnHFFCDdgoRzQsB/+HruLTofWCr/GatNt
	ryABEnIhDWHitlSXstRp6EQmjlUB5AlxpwwNuIHi9HOt4YOYfYG7RZTnWV0pbwuQxRK
	y0cg5xeCf+znCsiOQdGnnHHE/MZByMnen+xhcC+E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182811ec0d2-818752c9-8dad-42e3-8da4-2c5b394a8571-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f526c899c2468be4ed3eaa5dc8e705b14d8a320cd94921404005be330e08865c
Date: Tue, 9 Aug 2022 05:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660023652
