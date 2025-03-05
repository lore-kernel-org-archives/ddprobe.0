Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FECF2063D6
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741217934; cv=none; b=j5VPNLlikGiKVVXHxDznU/hi2fvjLbyFo8kjCT8TITrY35LPk4t1s08fGIyOxXbPKvb/bICIZJ3JW8ZZ0PXJGrh6mnDDw+iY8kMl6vqXaUE04uqyzakTjNkteJ8+QFKhwxal6OLmXIhU/CakIAoF6h9oHvtpnLpNL/bI5ZIqNQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741217934; c=relaxed/simple;
	bh=S/DxxeIkA38QJoiY2rmMGxc9Vu73lGQKOUsZ2ZhK1x8=;
	h=To:Subject:From:Message-Id:Date; b=B/T8mINh+Y2XzQBAl0gEyA8jZRDOx/e/0YGYyrJh1qZX+fgwyc1WvyyP7NSv0NSYLdNWsnnDR7CWBJL1PR2UE/c945DI58sKsw65rBjDHFaI9Un8EuIxcqu8WL/oiXer3X4/A5+ih5SATw5VIZLbvb41gntnxwkuK5sQuR6XKUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkU2szPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkU2szPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AF7C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741217933;
	bh=S/DxxeIkA38QJoiY2rmMGxc9Vu73lGQKOUsZ2ZhK1x8=;
	h=To:Subject:From:Date:From;
	b=VkU2szPsu2Nz319nbJwUpQMVtDRHrOdrexHui46Xn9PLuGfbi5idqIFX1JaPcOWcn
	 ojl35zqTpb6fRrEUxOhutz8jWTgmTqxAuyqxiT0GBhel/Bwe3SYWiawetDSSulGlQl
	 k/+cejKzEsskqG5Lmyvl0QicACOvcf51ky2Uz9SjMnuoeEmLvkz05eb4UtGCmAGJQf
	 yXGl1q3nxriPIdHKYjI2JEyKb8k6JPOlVSSGUZdK0dJ6T2bb/JEcX/CW8DubGmdr3X
	 zEt2EkGaT/Ph4frDLUGwbHoU9FFBNXx6AQ83w4IB7bJ+ilI6SyMn5fyiFFj6D4lbpJ
	 jFp7hpGYDACxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C55C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121793359.13781.10229364288931685183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d805f41b838ddf101046cb25ce7606917b168e52338437fbf2d475157abb30
Date: Wed, 05 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741217933
