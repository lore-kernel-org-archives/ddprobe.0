Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BADCA94A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753072795; cv=none; b=hrz8SEa/uk4srl0FBAwzjOlMn52VkrXmHD8Fvq7AY85+EQH140j5I7yMy0yqcMnPbXxM/dmV+NsSfN0xuBn8uTZd8pUn0yDvniu5eaTuA/yZMuz55Oi7yuR18ZuQbNPyLf2Mz4qCgJX6obZ3vQaIjgQf7S2vnK5AAVZnVxODuBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753072795; c=relaxed/simple;
	bh=9PsouEDdz8wTlGB6vJ5pAt2whg/GI3s5dFI18/Fx1fQ=;
	h=To:Subject:From:Message-Id:Date; b=kWa9eNHP8OVjiizKviGKdntqmhXTI/zSbTpEuO7fxSw9YujkIVIdtYMHWMKSnh+VIe3r62KqmqdECb8U+qoGrzZ4HAMr/K+RRmbYhMFaM6mVULyXRuIM/Y6FwmsYyfO0PTyoW+bKgijCwg0JXzNZpFbsQrJnMmsevPUI1GSvaoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U4ce7vZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U4ce7vZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E48AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753072793;
	bh=9PsouEDdz8wTlGB6vJ5pAt2whg/GI3s5dFI18/Fx1fQ=;
	h=To:Subject:From:Date:From;
	b=U4ce7vZQfSZI07P6fAjT11lo0+2iX1dg/iTDjCrH4DzdmTCYl0SA8GsyQVQuJzUj2
	 /fHF54AXk1u4TLoRZ8aHBLyajJ1RIiEEgn7IiDLYWFI3o9a2nnLzeCRoBWsEN5X/Xf
	 XZfB6Go3sb1SE9jtSb5dx1QtgpkEt3w+GlMmQpuTwgI1iXeW/R1aHu/uOCfdcJQh7A
	 YSc8gz4taAwMUb8vAmWzONdPY26wOo5DdP572hogQtsCVCkNk3wSfE4CFeoIofRbwp
	 dF9QIub7ETVcXpLkhLXSq9iW1r1UZJsEMWiVTWqgZqCYMVAXQwiHaQMVkC1YMbFNo0
	 JXLEfCuxu98Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB51C83F27
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175307279357.28570.6380548400753391826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf660a272447d7c8a9747fec329739ea5e83522e3766b013a57573382dd20aa5
Date: Mon, 21 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753072793
