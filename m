Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10370149C4F
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 19:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724181354; cv=none; b=TmcBzlFw/CgSKpbb4pIYPpsUgyPaVXW+8RigHs2qUE7PH+HVhzk1irSKhB+jq1lpzghKjzvp8DRoyYymUKsJjFLtttW34E8Jot0c1HldJESrbLv6ZdR3AwWjelFww7fzyz/tfTxm9kfi/F/F+Z2p0YoJ0ERGouYsJlDKC5lhavI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724181354; c=relaxed/simple;
	bh=vNk93ProeC+TENLNjUGNZSeqeqzt+AfPiQNy/j9miJk=;
	h=To:Subject:From:Message-Id:Date; b=HOPczhN/ZZpgQ1E7rVofgfZPGbnM5TpvWgdzkUUWmniBVMnZZX7C9hk8vEw3I2ATZAb+5f0aeCB4T5lJmdhLq5dZ+BcYg+JsRyPap1mmUWwPzOSrFkTq2nboI+emohVuZ288fmpSdvvh2hQKndjD2JI0R20Kluwy/qTl7Cnh8ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEcHt+J7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEcHt+J7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9075C4AF15
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724181353;
	bh=vNk93ProeC+TENLNjUGNZSeqeqzt+AfPiQNy/j9miJk=;
	h=To:Subject:From:Date:From;
	b=HEcHt+J7fckO9ym0ljkoE9G1zTqR8d4QR351Nl53+de4GYrWB0wkGIQb46PtcZ43S
	 lXbn5+QrAQCtRPQkpztNtLxbc+kmoX8nv9xKMSXnWgv3FKwH1We2H4PBFprwVKTTOu
	 XjYe+HYKCDz8xjs2U7ACul7Qp5jgpsEsDcZndHMTqpgutLkp7KELdThjrg5qL7vbbC
	 yr2bm59Mjn1FuPJ4TURva/XAGuwSFzOCfBu28O0O2NUDhjTAGlacpFtQL578JDVfbd
	 CnlPChClKWau+O3zRIW1lIAz7hnqctgWXovSPqx+v1s/HKumWeQ723ioXiKSbsNCu1
	 bpOGpCCzZQ8Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AEAC3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172418135362.2346.7137001180934696586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a018fa725d5a768941e755a6d399de8a952c9470f07637b0a072034e2a66f6be
Date: Tue, 20 Aug 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724181353
