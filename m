Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C2E87F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659471053;
	h=To:Subject:From:Message-Id:Date;
	bh=4HJCRau0tTgMkFTcdq/+62r1bH0XBY1n0YzR+HeFok0=;
	b=cfBC/SKNxgMTmz8PuS0Thmy154c9Eun7OyP9nYEmpGwsdZh37UDwka4ydmJAL48I
	sTLrcDRK5yGDQVT8kIVJ+PN1+b1LNjtkMzuRnlIzdZ5+9mOZ6VJj+YecgUzk1f9nAxB
	K+Vxoq6DOG33h3P7LYI7/fwkGdaIy9PP6YvtluBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659471053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4HJCRau0tTgMkFTcdq/+62r1bH0XBY1n0YzR+HeFok0=;
	b=DRpY/BDyRprLZw/y8k2XmqHFu5rgGJ01G7Rkute4dQSZ09d9NV7cXs0oEMMwxg/q
	hSqR07DW8XKyHrkfQiV670W/u9+MJNy1OA4MTy4oMcxaU5A1L8w5MTm939tkZNqA0fG
	WCoaLYz3FgCYDWmrxTOMqn5B1utP+334GAhIS07Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182602ebf75-1bf4414e-b0c0-40e1-a8e0-9649801b1bb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71afe5b50406c335296c2d4584bdf42bd6777e628567e2d52d59963a21e59590
Date: Tue, 2 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659471052
