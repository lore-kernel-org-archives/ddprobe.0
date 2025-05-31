Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F8A17BB6
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748706594; cv=none; b=LqaejqFi45y9UFBa0fEufxFXIRLXv5CmEQ8jH6iBFjDRb+cQXItVFD+af9m/by8UDS6+tLuH4mhuHL5hIp+vWuU8b55APiuWd1wBfwjIzwX9aVyyyecKhJZRlKefD6r89u93w8WwoGJZSA6UwK0ddzIF352cpCc58X1ATbi1drM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748706594; c=relaxed/simple;
	bh=SQg7hesrQKHCoQbFWGKOjamWWM/cyP6m2Q4jSC/I6Ws=;
	h=To:Subject:From:Message-Id:Date; b=fNg1JB9TY69/jHcHES7VGJfrZSp1Aunu1HZRHD5oVJYs+ReYcJsytF2pjmAlafAuYJIuVifk7X6T+L3og1Ml+GqO4xdhQIA5rMqOzyfOFlhfV7+eDRnuv0Xs/PRMKfjwgq9ahH4uDvS1jLXEy85kuNarSQ/47B95QKnwETjRofY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9Q+tReB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9Q+tReB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C9FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748706593;
	bh=SQg7hesrQKHCoQbFWGKOjamWWM/cyP6m2Q4jSC/I6Ws=;
	h=To:Subject:From:Date:From;
	b=A9Q+tReB4Dno1jc87ZwZE5ihjH4gFAglcn8I7FTG5B68sV0ADJ8E9gXoOTG+beG+7
	 S9wh3xhvY8XinUxMgaNo1L+ubGevgT7PFqBArj8iA//4ByzMKFDmql3mmmVyjGPi7W
	 C5mXZnfkK3I6kC+L1SmNo2XHuI1r/R3W6dIqoblzyejI3PeyFlQG0R+dKdT6rX1lPv
	 8fTdt+PVg5QTBqzvA9xyDv0C86RGTAzaPbY9gfR5VB8KLhxsQK7hGL+BvKZNDjskI8
	 sIAOdDqJGdvwz/Ix2nLp6kwSGSaxES+Dw4raPTiHNj0yvM48S+DHv1zu2p4VM5YxCj
	 E1rYzzQfFGu4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B76C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870659359.3273.2279681955449557759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f625c84669e503b27bd73f9195c8810d041936a634ea5280d44c1cd7a2ed7d
Date: Sat, 31 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748706593
