Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA6584A35
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752587393; cv=none; b=hNAQXhYbVKCL3AFQ7YDIItEw5Zot+7bmtFvhhHR1XgkmLruMBtvGeYbPjssFOH6mreXkrMewYa3lLmmIUeLKkrQ9jMGWK6pzr6dbkSu68aLhiTORZdSHTUD3HiXQMxSOLamNQj1kwWrAJqFuLohIQsqZ3Fl+A+H5SFVqGHGyeRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752587393; c=relaxed/simple;
	bh=WXXZLhgpTlmYhokH0D3v2t6dPdaALhEIjVwoILYg/Hk=;
	h=To:Subject:From:Message-Id:Date; b=Wjmd/qlfQOPdXKT52sQeBgaSgIi2WoktbyB2YuCxbEJNcObVk3O0V+c3p3mU9YQuSgVqcXa4Reooradj/TdRQtyKcVeA/xZ2GIlHxsUVuJvHIWJwwxrO+dXHX1udSRZcYufdpoxtv0tqxvXM7JCrSUtBtKB/gh+vn+ueyVllSsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK5RX4ZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK5RX4ZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2BBC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752587393;
	bh=WXXZLhgpTlmYhokH0D3v2t6dPdaALhEIjVwoILYg/Hk=;
	h=To:Subject:From:Date:From;
	b=rK5RX4ZDmhKrQIrz2YbSQjnuh6d3PmYOUYkN8Bt1OywTmlDxf480vOymmq2zTzRR6
	 yVrAKMzgNubrdOaBN0k298HK+P4bJ7ALwNCaXKuk4Fu2q05kl5P2ab8qtKWoB34MV7
	 rjicbfhag+f87o+JssWNzsJOb18ZkCDZlJL+5ZAZ+dRE261qdvwXEN6gvcaelskEe0
	 iI6QGmNdvMBpciqlJ5L7ExZti4sWR0Y52V6r2qNd6m+NeOB9ozumcyLgGAckYYcdBo
	 iYcPTHNbJl+twyFE/vdKqTfvkh90E0dbVFd/cCM9q3wlB83ZQAsvhXc8IlWl2ikBfR
	 tMX56GttjSFLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A93C83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258739358.31160.10842881921676894868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d821af4ffa854c2bf3993917909566ead1c9d9180bc2ff429deb2958ace49364
Date: Tue, 15 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752587393
