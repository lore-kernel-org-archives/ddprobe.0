Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3937B253B58
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790236834; cv=none; b=YDU0zoK7UEfe+OhWHMCPQWCcww5+UBZZze5lfaUNvmOdj3OESNzSfYnrODV0si8reCbmhbUcLbY3stcGw73QfU3dbMKy9QtQQjIwJv2yuw1kCbY/n5/brcYoIhgOLpSyTlnUALfvmBVcdKylTsP82SkBiIhWWGfHTJPsv3jZrWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790236834; c=relaxed/simple;
	bh=g3Iq99V2Lyx3OemoNF2PE2lq7M68JJiKow+3JirYQJc=;
	h=To:Subject:From:Message-Id:Date; b=Hw/gxMdVPL712KZXT6MdnfUxFA1JGNamAS73ui/CyTzOcvGs+7t2UjVmm3LXe2i50FLeBCT6vf1lV0ebn3XsIOKaJlVTrd7ESMI9/rNYqwgJDK3EamVwmKpcSoHLqlM2nJmMvWNdz+Ms3YXhE/1S+wYO9WjIdrpYUc0Qep2i8S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IeQU9Oq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IeQU9Oq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D027FC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790236833;
	bh=g3Iq99V2Lyx3OemoNF2PE2lq7M68JJiKow+3JirYQJc=;
	h=To:Subject:From:Date:From;
	b=IeQU9Oq+9JA9HrXdzzjUpku+PF/sKVeXo0Nr1FmEv/ApxToahr2qQaQEK8wwGTv4o
	 Wo1Lswnu5BS7VINC7Usligs22DXlcFlGZMnNf4uDTu2F4skyVWtEFvv5uTkaRlqe0v
	 MCdtqnTR3ivh3jNTFXOLHp4NFEsxcI2dl2ZaIj2cEo2AcD8AArAoK6wa3O3UG7vbaX
	 kadyA9QsGO+HnXT3tIJLIntPMwLh9m2kzSXn0BVvOmidQDHiJE/n1dtNpj6jT9mObl
	 lJBU54ZQ5AFhw9i3Ax2Aplc7P2jECgMi7TI0+iE3swvWQvgT/fR/GyttiR6nuo/cXv
	 +oT+vG5ySGQSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4EEC98310
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023683370.2172.5529659733586237123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47159952385f17e03b71ab32e005fc5068db9049890ce6fce96b9cc023baa94
Date: Thu, 24 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790236833
