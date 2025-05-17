Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B8B14EC5B
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747464594; cv=none; b=KAPSGZ9WYR/QaP685O8ULc5komTy0oe88IfPuzT7RNuU9NQo9MmMeg9i2crcDtYSIyS4Qgtv/EQgqpX/Ueq/nHuYS1cE1oJnivwzwsFM5XpQBmtMghnmbOAkdI9IChXI8oqFYbEY+amD1SRDJMkqVmLioaZnA35Fn8XHByNs2C8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747464594; c=relaxed/simple;
	bh=TVbkJsq/VrjZWVIkRipC7Iv9q8ScZgfceCSfMj4kTtY=;
	h=To:Subject:From:Message-Id:Date; b=KRUlQFjbHpqb7N1kFtRxzEGIhu/lpuft0vY59GPsna4WXNaK6pXbWmlTg51a3LO39GuC7Tgha2UDgphBkdtxgaRvx+spKj9wpf012hmii9qgBQWk3BIczXGi9EIWVAS96Ox9xaS096M0mnSE/zdbtnNutGpcfZBLEDfXJ9vMFvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYIfubuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYIfubuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05BDC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747464593;
	bh=TVbkJsq/VrjZWVIkRipC7Iv9q8ScZgfceCSfMj4kTtY=;
	h=To:Subject:From:Date:From;
	b=eYIfubuHHIfUmtXpleW24ElgSLV8j38qz/hg+aj60gk1Tk72M/50YOeaIR3gsupY2
	 K3HticZyeQN7hGalLXKNEVfefWq8uZEgThGcp1JmOK6+FN7rrT6FZ8oaQASZjGvPmu
	 jlkrTxGDP+23ilIUeQ+xwn1NvfH59hT6qDbzKqpfOX7UbCU3dvLSYXK9haVVFKRC5k
	 TF76Lt0dPfQwy8lzYdUb/s2odAPTtYK440Lq14U6cACYQKYY1L1bjA6cz9e4vr+Yll
	 uV0EEjnu36UjrNJRXpLQG/lm/8zcCLhsl9zgRs/dJwYUSGXS+/A5XyOsG+Qej4P+qD
	 Oq5uoNLy5fkrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA2C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746459358.7609.636375204713502473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebe26f7fcff1bc9f4a8b44fa3fbb0526ecce82afdb8d396a8a5dcaaf6c0f60e
Date: Sat, 17 May 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747464593
