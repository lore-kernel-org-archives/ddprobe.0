Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED1B3205
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 14:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654006859;
	h=To:Subject:From:Message-Id:Date;
	bh=Dftc9s8R4Dq8aWIUk1U86rMKKYKeQoAcLmbQtXfwwl8=;
	b=BOlTlpXH1Bqd2My1uZZRwh0b99ZGjbv/iZ1SYzsFIJYiY1s1RKRcBTa1U0GkrRLa
	K3HDQyK6sY+h3MuQN5tt6mylXiAjIwuKLkjpA/p/izT9jCuWNUOXSYNxoQZ1bGVWBoA
	yqpIG9mI6JQ/PKHYiQTK+4vHmTcaTb0lFBAPSZec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654006859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dftc9s8R4Dq8aWIUk1U86rMKKYKeQoAcLmbQtXfwwl8=;
	b=LfYDX/2AzPgiGbLHjRwnsDxHhNBnVlTrgMDcpyEOh6R1FOuTimfujjS9VkU1TxPx
	FuEZpMeytvZ0NkPU0TzqmfQZtnjC2iCdk8l8OnIjx5jCtZ0tzDKW86IYcqMCvggRE9T
	vWn0dFFbNU8t6zEWrM5Ftd8fIGyZz/iZu5zzxiW0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811a7dc664-87dfe435-c612-4a5c-95a6-753839a062c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7adb4d2ca4368ca6707b623b751cc16b9a57fd63d3650e229cf94a96556a3274
Date: Tue, 31 May 2022 14:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654006859
