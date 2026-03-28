Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1753930F927
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774736694; cv=none; b=JpgbsyxBUYe3ONdowQmNEm0oXLPk9zb4SpNZVezEym4wtq4AqOdUj1ujygTg9usY6xxC4R31FPfkMWiw8cvFpFVjYz9sXn96zi3WdGqJP9oEvf/bY+p4q++JP5yUOmuj0GXgrdHewa6pvboUZBiB2ufdBK2mfKN0ohFa47FrUQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774736694; c=relaxed/simple;
	bh=M9v/etObPvxETEA2euRt0YbbrgF70l+cJbSvFPdXUZM=;
	h=To:Subject:From:Message-Id:Date; b=Ow1tqgfOsdAvvVfTmAvMMu5cAVF+ZCw4+TCbNCaXmfkIAhBy03wKlqCBK8n2kLOMyLykQbJB+/1KtUzZxEABOufoitupfaIB8P3UNIZsLx/TtqwUUx/QXD05U8WBC8eWc+LBFtZ+lclp0jHlaNtYFvLAsk+IPGNxYuoDX3twZ2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzPj4WW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzPj4WW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7615C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774736693;
	bh=M9v/etObPvxETEA2euRt0YbbrgF70l+cJbSvFPdXUZM=;
	h=To:Subject:From:Date:From;
	b=EzPj4WW3abYoUS+FkF/OhYKQIzqMdHvAI9omlZE4tFpQUYz0IOypT5dsGzw9Xwnsm
	 LhS/4qddR6sBr9v5dDq/PMqJ/mo4VPn8GOg1myfRBeWZlKL0/THGVT8QOMZX0D+3K1
	 oGo2LdR3h3mdbKLn8Yg/yJXxOra3bkIgH0FcrpCIDn2HZ2x1kkSO2p+sTcpeiZzZGV
	 Ly2tR30biOURcn7FwrxuPX5QdMCe0E5UlFvZ9GZujN9pVZjhiJm3Ct9lWqXgHtgfln
	 ESPNlnNmMTAWz98ep+M+7yYU6GMs2gsYKV/1lih0SUPLiig1RDrxOZdW4uVAYKc18i
	 oAiSNnR36QtPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F8410D1485
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473669358.25516.12905409262798339136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac91c36cdb0f0f527b0e577e5dcfaeb669212884ab0fc7602bcf3dacb12a011b
Date: Sat, 28 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774736693
