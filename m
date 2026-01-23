Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10D012FBDED
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:33:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769186036; cv=none; b=WEUsMNNtiBtYiOAAu8TnxICuPICE9WBq6qo+9svWzDxZy1YjF6PoE+mfDPPVRbKXbQAy+B6Sk7UGD1FpozKCDxvjUE8i6Y9pZK7CjqwkRAWb1a2dgMS721uk9Xg6DJarl3M8l5YBYFQRUDkE1e4pWEusjByCkfA3jgAiPUjBKQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769186036; c=relaxed/simple;
	bh=0oNMXbYNYzs04aR8LpsxEI87glLk9mEgeFV+a/UvvTs=;
	h=To:Subject:From:Message-Id:Date; b=AWguZYnj94sEZmRta8kWZeAxoJtulkbxG24VxSQr3VztLdSAcHLki2393NZzOPFbKCJlStTsLqU6dG5T23IHteGd6qkZT2XKISPIrRhyxb0Pqpbdt6vrZ8P81nDrQTuKqzVdV1Lv5YakS3lCWN+9tuXMSde4x4NfNEW2crrLMB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XAVCYdpf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XAVCYdpf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CF5BC19421
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769186035;
	bh=0oNMXbYNYzs04aR8LpsxEI87glLk9mEgeFV+a/UvvTs=;
	h=To:Subject:From:Date:From;
	b=XAVCYdpfrepCpsUWTQ4dkT/06G0M/evtE8N1Ryi0JMAWkOufi80mjUz8WBdX0frJT
	 3gaLWnJXZWSdQJ5obaDn1DMsIbtVxnc8Nl1AHSGp5qTI5vVs0xwgj6lZESx6oK14B0
	 GlB2Gc7tPwahYHuNbZob2nvZbkmfivP+/9u7EpbZ7HGGunPwOKalcvoQl9fyWr5xYd
	 dTw5pLQppJj96loXGKKitrnXw5AWXfBZ0tu2dRkue8zJRgjsYf4LsPi9VH177mLFX3
	 G6uw2IVbuAg4PZ7Ga8QnZ2TvoiS+VFdI71JKEkryGwBYO4Jm5gH0BszgVcyLJzenOv
	 bqIXOgia4ELUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9E2D74EFF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918603358.17092.14694938454145145571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffacd3f1fb5f490381edecf0f02f06f24c8932c95ab6cac1fb97d7505040bca6
Date: Fri, 23 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769186033
