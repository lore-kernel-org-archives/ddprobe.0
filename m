Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F3510A1E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757812794; cv=none; b=ZS6vhYSoAOUjlKNOKlYFU5dpvNvGRTbeSG0n7/G1X5hcqh1gNjbc7ukxcSISNePyhpmkYHWZVjF9wAbyovJWf71/Njg5BA3i4rIx3sP62/H/zijmssZEIn6VKAS5mPEkZAIyfeJtXoYIr58LPDt2KSxWJBseU5f4IYtcPpf5JHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757812794; c=relaxed/simple;
	bh=c7PvjKEITurKEoCfUOZmtd5vUTjKulLEwxLC6+1byno=;
	h=To:Subject:From:Message-Id:Date; b=f9lAb6VkNbG2sxCpGJ2YPwRM+kHQ/3o8LqBpnX+K8DHMb6nDCR2ItpNTobMQexigB6bJJQ+k/l2PoNPhgR7/2H+EOQyNFVqSIpMn/D1wtNxxsu0GKt+xkJHCjPyE7Sn9qTOG6lWkiAQPEg+9lOMC3Kz4sQmdnIWRSFQPCZ5/gIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCaViJNb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCaViJNb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757812793;
	bh=c7PvjKEITurKEoCfUOZmtd5vUTjKulLEwxLC6+1byno=;
	h=To:Subject:From:Date:From;
	b=WCaViJNbbFIBrttdphtMkc4bwHJOLG3KTqN7mPZiVH/VIMa8NW50w60/cH8tVQekZ
	 xihNtDqg735zkZtvgYjbFku7243Em2pdXOSpby0WuAr0u6DhoITiohcgKWxWg5Vh82
	 dq8AMYhp/MpUD/mEg1olwjzNKE+nqNmHmA950KFC+NNq+8xnbuS1c9WUEEqGGdiz7N
	 9NbkUeAp5hYWBFmKxyWTTPOlDdHxzqDrrbT+fIQqcNCLhCET409f5O4jWym+jHmoGN
	 vpfWuut7WIAEcsPH8n+ta2/lLtB+YlYfTdC22Tieh7lCO3CVnbbhSX+2FELaeDvHN9
	 u9KIl+9ZRoKxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DDCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781279358.13418.1454284877619846895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48ce975475c2a328e9c65642604b4a481995f7b90d262b84ac79591d410c088
Date: Sun, 14 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757812793
