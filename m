Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAEF378
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 00:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E947AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 00:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675039985;
	bh=s3mMDVYBugWpT2d3e+r7TfmQ7W4nE39knZZHBoXAqBQ=;
	h=To:Subject:From:Date:From;
	b=nNVx272Rb7b98+FVThzlWfAixV+DPhf2/2gedAKKTXvtJqxrCbGkCUJrCi6YaDwYl
	 EDRjR4vP53jsnP3tOuhZv8Np728wmxSFacuboIRjyt7FAfEZohzUOVXt9VdQ68xJAz
	 bM5oWCHG0VIgNg3s+LpUP4JTaGEqYk/hKAIQK+X7W8TntSOp5PiPiXl94mDAR0GdSi
	 I0/11QzmGqb457g+s56KohBFFhoiVZCjupznBLjBnDrKyc6mrNvumTGa81BEEjcWkM
	 B7njRnBKV3UHQYZFuu3ETXF4xbJfDT+y29CuiuH4fH2dm8sX0qbfGgMSrVn8D1OqUK
	 svK/PX2jyYebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF17EC05027
	for <ddprobe@lists.linux.dev>; Mon, 30 Jan 2023 00:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167503998574.25109.13693939902701770932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32bddb0a54a9b6388c2c8496f8f29ed06912142fe37fc3c55576580f2d3aa643
Date: Mon, 30 Jan 2023 00:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675039985
