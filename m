Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C507FD
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtjxXPG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 892B4C433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703294896;
	bh=aqXx3+xmCVoFVrdz0f5xfhac/zFPuYk6yZIQaeCuPGQ=;
	h=To:Subject:From:Date:From;
	b=GtjxXPG/eoSVGxbGmYzW8H9Vwuqkv+FDAPkf+CUL4LD3KIrmb2QwdiohCjDZGOMsN
	 YiNhFn8BuyUwWBSJ2/t/OJRPLE29IFsGFb9axXkk3i+YceJOibVbQ/9HHmYrZsP2VN
	 0497i1eTrCaxYxB3ssai1AP0Wyc1ISXbGx5GncqI1i3R7ZZr6h7uZ4mJKLRRulg3Ib
	 2hbCZGgeXb5qoXql0gmVyy1Q6eUSuWek/ukHBSIP+ktb5rrsAY96gh/CxgIZTqh4hR
	 UTwAm7j4UziETNXQE0kMkn3t4Y1/pTyTAbwTwcCZAdYD/FhrTLg2WpcwKmpnc4MCzN
	 d1Kmqf3igw45Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BD74C46CD4
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170329489643.949.14956526962115992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29aebbc325a68f0d31dab5327883823be92a58b4db8be4de8ec02c4c5c85e59
Date: Sat, 23 Dec 2023 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703294896
