Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9A77A
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 07:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656143212;
	h=To:Subject:From:Message-Id:Date;
	bh=sJmE9WPEJQizmKgo7UDZVJOXViwgiqmIt4EgVH1HDdo=;
	b=GuZMmNXf45wXQ17kt1Hz3daNGD7IhfMhfY7RMcFbcCPWxzbhR31PmdKDjfwtqOO9
	1rUAxXv9K2cqg0yjFZjCfHIBxGxRya9uZUmJPfjp3dH7z/SGkCkT28+KrW+CuSti4Cy
	ldJlZ9jmFseeRcqJPevt68OBvB4kw3Y6YZ1HwqCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656143212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sJmE9WPEJQizmKgo7UDZVJOXViwgiqmIt4EgVH1HDdo=;
	b=S9IeQkEx7YmxOM2UQ/6tNMPpl7TGnxbmVqW2EnjGSNZFscDWZwmMl7clVObiE44g
	1ief2vcs+QK1JgjeJ0AVz01Ghk3GVa9/dIQOvVKUOFP2buNIbSxXJqaTaQgQ8AMdxzI
	724wOX+F3jQT/ePriK7ibZ5hfFehCwewH/oAbiS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018199d3eee4-328359bf-5949-4fe3-a092-b74f8b68fc01-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ab5898fb46db350238a8f2d91b00cc7c3c86653148047c8b64188dd324935ac
Date: Sat, 25 Jun 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656143212
