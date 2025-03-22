Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5572B42AB0
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742663994; cv=none; b=JynBx4vn3urTjcBM8BMuJme/hq/DNttSblpB6yXNG4w62abflTIvW+e4xishObLxn/BV+ph1c0SsRuaEcXE/Qzh7yIHYMGtGHRr1OZIJbu9tzVmchhaBwdO4g08Zn94CxTsK5xR8r499xlTfFOVQUWSDAJtSxb49J4Ml+FcJQQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742663994; c=relaxed/simple;
	bh=79ry5fe0i/RW6E4w9XdoY8Z7wwwzWNYyWnZ9+hHIsDw=;
	h=To:Subject:From:Message-Id:Date; b=JYKby2Hg0BhxDE+wxh06bjQ42eGNkFi/goA4a0g+yCeSl04jbG+dpWLBaN4aiZgbFtfPb7t2NHLtIUGRdpxwWWlXEbc8G3IV7A/DRkWmGhKcTmUNDC/AsxrQT63fKVJ+VIGyizNZp3RBHPB5hinhnH/dLVFPHpPQz6uXInWmd24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8VbopTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8VbopTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B3CC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742663993;
	bh=79ry5fe0i/RW6E4w9XdoY8Z7wwwzWNYyWnZ9+hHIsDw=;
	h=To:Subject:From:Date:From;
	b=L8VbopTQqIWZuBc4pnyXaq7DHE8axxsWJU+R6QmFoWjO2VPI0cnNpbFPUzxSixHmN
	 cZbqZb25RStmm/urbZomGcLvWaVzt4elC0WarM+YRwOksvbGscvX+5/uNE+x+9Ky3K
	 imKJCO2bBUf0Y/UAfg3G1zg63m/c465Zglhh6SgHHWIVaEPWJ6r6BVpZ6nDVT2bY2T
	 k26iDyeDmDqpv5FW9Pfsd6zVb+vpPskJSbLrCUu4/sH9WMUvOOiHI7NJvgysPHk2+c
	 +hngylOAPi6V7zympvg9IbVKmmNynm8Y2cmoa/KxBWSBLTc2zDg5szaOSBSl9pS/Du
	 DtoOL6/8ahNDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E8A2C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266399361.10026.7494806684911294745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f14f9c756e7964af180dd976374084f5837f33f06f99638d461ba08952dde3d
Date: Sat, 22 Mar 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742663993
