Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44A657E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645401984;
	h=To:Subject:From:Message-Id:Date;
	bh=k2EFk0Zv8Sn5+DuvOTqRZUMeJqBk/TmT4aRMwHEcuSg=;
	b=VM3Bgk8c/1c2tBrSSZqLJ2GfuoZFDZSdZ+QFnvaMvP0Bmc9tWYYg6HjsZh/MtYQ2
	PzvSsA3xznbjkO77JMb4yirekkWG8PojdJRSEav4iKqXhowj5H64W6FkbGMVv0LepYV
	Siz2jKSE9jx8dYkHjKEnUgf4Ghq35tr+/nybCPeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645401984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k2EFk0Zv8Sn5+DuvOTqRZUMeJqBk/TmT4aRMwHEcuSg=;
	b=TR4M1j46Ane7GD/QbwA0dY3MFvpR3QfShCcYOrPCCCDfkvll2XqbrvbsxDEIjgh7
	i82LzMYOEebyWXwFGrK+xFKttXER+pyvjzqPahwouSTWdST2bv4F8QA3j7MLRmtJPKY
	9L+00mVw+VY0SsMzMgG3bxJZeX/TbPhR39LmDGHE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1999cedb-7bec7308-0d87-4bfa-9c6a-156a410ed572-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41906618bda254e66bdf6768b453b8f8f6522a30d4121b3a6b59c035483ef201
Date: Mon, 21 Feb 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645401984
