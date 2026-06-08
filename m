Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A16F3B1035
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780907674; cv=none; b=L3EggK2Vuw0HCzzz5lB7zf1wVesA7eks1M0dTkQ+/Yqjtdda/RxMcNadKaqkcs5jGR/C4SqxDzBMlbuoL2Y6KRFhrv1UyRHnRGlPX/TpJo81kkqKrr9R9op8dsUvN3fGSX0gKBcCe5vfcnWSGGc9s+kKYzdSsude4OoJBRqrvvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780907674; c=relaxed/simple;
	bh=W4c5N/Mi2xNhTN9JNESNIqqdKiYAdATjyVhVe4HihNI=;
	h=To:Subject:From:Message-Id:Date; b=Y/WJyBGWN8DMr/dHKAKtDebVlW47EH+Kuwng5NnhwgYoTok7Yssaiy23Vuc13xmUTwDr+krXG0sV4hWxwR8VQBJP9hSTiEslpPaQk511kA+KjTLHXuOH8yxaW9zjM4piXJKgxsvUMgHpj6pvXaXm8iTJYnliRh/qafzrCKJFkXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faX4QGc2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faX4QGc2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4088C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780907673;
	bh=W4c5N/Mi2xNhTN9JNESNIqqdKiYAdATjyVhVe4HihNI=;
	h=To:Subject:From:Date:From;
	b=faX4QGc2svIN8K+/L/DZ9R2fPqVqAYfGTxQViQPRRHsydJUronofscc08MIsQDzzt
	 gbLtAbylAv3NiaSx6yNmxQQ0cD+USGmWk6tTmurSkkNn6QIndZLtHalUGHONBgLoup
	 frK1BGSPrAnsXkfR8nOz6ZkumgSuntAyN2PGo8RkOxPvU6Y9SRQj8crZGJl1jbaWiv
	 Qb7gUC4CWZW1POtYRECLzb1TBPTBwq0b9rdiWag83Js6RpPSKlvl5Jqg+3AEGZxxKn
	 JQs+cOiZmjLkX1YxeH6agDvMuG5MTvWYPagdNdTrPWNadCGlAMISnPsrWQyyuUec8X
	 rHC+FIgAYUASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2BBCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090767369.15159.14158984074530932646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4da39091777ea66b723a26e0405ad7fdd66092531237af1755c2d2ba35bb373
Date: Mon, 08 Jun 2026 08:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780907673
