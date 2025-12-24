Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CE15335BBE
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766569434; cv=none; b=sQXxy9T5cYCgg98zYKRz+ZVfLQhqeVLYoCRELMCglcfvJ5W3qJgplheRijMaJyPSWcdRHo++/XsiUq/mLu7j3zxnt/fQ66uLhdeRoPIyxJGJtsa0DHUbF1rCeC2O8en8Q3GZbEETRNbFKxS4b7Qxgt7HjiaKVKYa5+fKctZnVro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766569434; c=relaxed/simple;
	bh=0lFOweTt+ZpaWnhLuGV+/mPlnTVVdLWnKd2zJUiyHH4=;
	h=To:Subject:From:Message-Id:Date; b=WoAQrOqDZ6n5NzajyIfVWIqB0s3HLsGoRWbx1HFRHs4aWcka0CJptYjH/x7C6RvzLcmmkowYW9OnA2Qq9KLQBpmccLVEzU8ULr5Uw5PfuEdpjUhdaWvwwB0ll7uF7A61QPqhKjElA67/0cZ/DZ2FBYuLx2Vfq95nLGRY54xI/No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8WyUA9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8WyUA9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A5B9C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766569433;
	bh=0lFOweTt+ZpaWnhLuGV+/mPlnTVVdLWnKd2zJUiyHH4=;
	h=To:Subject:From:Date:From;
	b=Y8WyUA9U7X4ZQ6m/EKEZZ6qq2LbUDY/WvvJ6bJzFW1wWWu7JRyZH5oQj8IDTsYxtU
	 4L2MnD64gaofKoR7SMhvAZFO2UMIS1TVsbLL7O5qixNoD0hbJXa1OAp9GgKd0dL3mc
	 xORozHStlmyVQ/kOSVgbS7XPLV2Vvvyn6vUOGDrEGNfhJs/WhNyzRlL4fq/wch2pXY
	 zrxpZzB7tLtd4Tv2+nvNzEYm+PAkfqYn9gZV0Q9Sd272C3L2uUu6RLtp5sU2yY35Aa
	 jrElkpGwgTqyWSwETKQyd4/ouFZdHPt+fgoomjTmsGmPUu38WzSpIdl9pglaNNLfXe
	 Wi5+u+JE4xTlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F68DE75446
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176656943357.8752.6629081354560334748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2769cf0d0d5a7fba8ee8d983ff4da0f3f21abb87da007fafb2066ad1e8893341
Date: Wed, 24 Dec 2025 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766569433
