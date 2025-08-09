Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E492AE90
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754717995; cv=none; b=e2NbX0bAaWMJnOFHODGNaKjzNWqkg2gsA1FcXvE4TPr5UbYW6jtgYl6We9S01KcjstQHR6W/JAgdkAxAiYA5Nk7IoprKjJ/DsXmzPZI19IhrH3qkYxPRQ0KsKSS5PA4USihVjCQF4JVTd2MY2SVlxT7gT4kOhnG8hLDSBvYS+sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754717995; c=relaxed/simple;
	bh=i+AuleEGQTMwPtb3Uy429fR+3TWkQbYdUseqU94K+4k=;
	h=To:Subject:From:Message-Id:Date; b=KdCkittP2QzdWtHdi09eklHc0BJkmL7lFEZff+vTRmq30HTdAR9rg71Z61boc/DUtXni1NR97RmmHumNIqWXdv9XqGN1zFq9sIii4dTIRnM5fDQi3dzYLt2QrGKovThz9dKkmLlwAIRJNEIueI9k2QtEA1J+4x8Bh4YV9JYa9o0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/3gs2MQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/3gs2MQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D79C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754717993;
	bh=i+AuleEGQTMwPtb3Uy429fR+3TWkQbYdUseqU94K+4k=;
	h=To:Subject:From:Date:From;
	b=b/3gs2MQJeUvv9k/PVgn1sQb2CN/4wHt2d96BouP4vrTwyrYVw60f+h+Hn9srjTs+
	 Qy48HU2/RzCuHokbcEWPXOWAr1LYeX4tDpzeuFSftfp4KZs4zSQmeWfRDgo4ZQeOD1
	 LM5SHR0unO16WQHPTmxeggycLtS+fgsXOg3iAC/KX+odVZs3xDB7/GaY8FyJ6LCrph
	 sOc23eL8cRdhb6ujodG5eud1igS17jtSWc6vNhCMgg1uJdR05tOU9/r/ZC+6HwAi8U
	 x5FQVDNdOAz88Fcu8Yb24Vr+S65sycHJdzEM+eFhTmhx7ackPb0hZSYgertXGU8RXv
	 hxf0+31ceiOrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B17C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471799357.19812.7781957357005431074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af38bdd68ea22623f93f02941338403b51c4777fc0262326626f975f444a433
Date: Sat, 09 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754717993
