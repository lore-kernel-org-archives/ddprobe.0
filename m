Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2C2579818
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788963634; cv=none; b=jvpTzuIwA9acja9rh1Exmq/ErALbr7RmX6ESZlup0a72F4Y1dGqVf+o5Zb//x3oY9eKAK79fma3vGUqJOqCBgq7HaWQQtjBPGMioSb1DhSRyRjXYRNeuDqB1qITMGpx8N0UW8yJr8W2ik185CMyNNSdegppYxczpH0tj4nREzQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788963634; c=relaxed/simple;
	bh=RmxgMicyr/aoUcdXH0lypxyD4VNWt4nMSF+HNpSlEb8=;
	h=To:Subject:From:Message-Id:Date; b=NXbYaZK2bm9IfPj/FFx5EE2O17hW44hvtj6IbAGgi/FjdBKkyR1Ixvzka2dUX+PJ0WqdcpD8RGPtaHsyU80hLqD5j7U1eCpgCNNonT3YwVMnb7+LlhPjpUD7pt52xL5VyxXvRbqBcEKJCrIrTv/5zhJj0Tkomupfu49yBlJ/7xA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBonkQcQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBonkQcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FEFC2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788963633;
	bh=RmxgMicyr/aoUcdXH0lypxyD4VNWt4nMSF+HNpSlEb8=;
	h=To:Subject:From:Date:From;
	b=gBonkQcQ9ZVMveEPERGSFUSI/t9ZymzinalKwtQOoq3IZ60ZrlksMlfpUfE71mfXC
	 Xl99dcQ7v/7c3iuoGQarh+SVa0EzothN/dHrlVxxYA+idQxNHYuPmJ9R39TR5V1EHK
	 /MC/bFWAVml30BQZ6mwzioA2e3Go2f0yjkw0seUzYONZies/RlQ+mXwHrWQnUFXsda
	 Pjg+OchFStUFM930hIemoM1BEyGJC05jUDoDXed7KgVdvgnGmSF1Fjd7p+vMJ2g+zl
	 Edj6JjLUJBnnSjnfvkS6wKtcd6qQxmilsNB6MEyobq5x2j0Qek+ub9i34n8LI7k/6U
	 uCB6KK+9g7G+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1FDC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178896363370.8638.1478216230078474731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 115efe957a9e269098f0b7c10d439f1179315e63845533130945b91090038eb3
Date: Wed, 09 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788963633
