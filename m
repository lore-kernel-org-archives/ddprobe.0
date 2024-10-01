Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBECC192D74
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727778354; cv=none; b=qbKiuQxqhuAENVwXWhxH7DU7V3aVrFvSCffO0wTSH5D00rDWaqQNVtLYNTLxlncP0Z6IBSb2YKupeJfDO+QFieKxQC1vfSDHFDfa0BISB8rjmccT6mFud1bX/obgNcYhe4XgKHgreEJAJbP8O6f2Llg0OPEkW0GyZRpMkLMQprI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727778354; c=relaxed/simple;
	bh=SnR9SCPVRxeEHzANSZ1GEmznPMr8pMgpTTAt1ckHx+s=;
	h=To:Subject:From:Message-Id:Date; b=Pj7NH6HFAM2sjIW579wOu3zW/FmJpyWiGyLZ/4o7RpCivyksdkyvnBS27XqCVztXnz4DJL9IHEu+/tXBCo/qaq3vFa7Pjo7JEhTlqIHP4lyZFLN2InwO1OP2Omc+zk1Rfz8bcJ3+cdaLj1KZtTSF2NO0rliuh4VvFJKzfeW9cQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HZITJM59; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HZITJM59"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A750DC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727778353;
	bh=SnR9SCPVRxeEHzANSZ1GEmznPMr8pMgpTTAt1ckHx+s=;
	h=To:Subject:From:Date:From;
	b=HZITJM59a1sn1BYKgnFKIN2VzWlgtQqZjQya3ftxPe1ezdmLfI35d+MW0L3DzKe4V
	 VdWjXoRZW+mbTfR7gCv2CX/12ToJLiypwaakBZT6iIWrY5+FFYaVpkYcL7ZVmsdBGE
	 /a/n+p5XYCDr4xMBNcWMQJXN5BBJ2290NOybM4np3B80cOnDqrwKViAeSpfii/5K1U
	 /JiUf/g1LY45lWZRRW1i/Jnxhbo6evK7gdwGLxMblPYQJS45xI1j3jpr5kEZEylgVA
	 JwP5k9c6bwfGi9e35b8I+eOZ1eqV6XbTmqn0RJtHsv8/pcunl8gXmsgECPg/zMKMiS
	 v5OKvgb6KnuqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9795ACE7D0B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777835361.5898.15488809581693076457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be0302a68fa1650536aeab5d92946b49bbeed06285d65323d0fd70288d696b19
Date: Tue, 01 Oct 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727778353
