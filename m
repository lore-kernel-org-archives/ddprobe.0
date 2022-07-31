Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491485C87
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659255052;
	h=To:Subject:From:Message-Id:Date;
	bh=6Dy2DZ0ApPYXUjGZrO9oBAdpuvezEBOrqePQnnhMXLM=;
	b=ZDWIccKWZgGLyScyo+vaLBZkhJV68xhIxZrHUWdQBqlUAh2KWOFNOtj57FBeyj6h
	UWUwK8OutEkWzYgx6xwsn8F55hBazfm9xHgGhwdgXfZ0m5lxh2T9USij/OHz4Gc0l0S
	QCLr+KuVfST7M7094g7OziOvBtbppt04C3aMSSu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659255052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Dy2DZ0ApPYXUjGZrO9oBAdpuvezEBOrqePQnnhMXLM=;
	b=JXnZyhcO9S6yj/N3z1UjMB7ZM5TYtImh6jS9RC/oAix+V3OXUNjOPAP1D3khHuBo
	FmPU3iStAZ1Xt1OM/V4KEyZgnajY0TY5vulAruyxf7Die8akFxb86Mx+dR9Lmdore10
	kXdG3brW38b7eP5D2w/7HayXO6HfLOv3ORcEqha4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182534ed927-1ece0aff-b06b-4984-af24-bebc93c6482c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8df9fc84c8d524150e0f3b6534aa3984dea049f06922be98788671da668b6816
Date: Sun, 31 Jul 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659255052
