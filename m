Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D51430E5
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 21:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A857cGZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C45EEC433C8
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 21:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697576828;
	bh=JCDa/G0j61Ey/hSmAAwSpfAQD0ZDDEY5FvlEF3D6f38=;
	h=To:Subject:From:Date:From;
	b=A857cGZyveCwCuBmiENChg1RfWLCHP7BT/5hoaGEB89hv4IY7yfXbhJHU/eEBpIid
	 +H/IO9X7ZxP88/vu6gKFcHam/b18ibcPb8lyU34K26U6IG+76KDn7OlnvIsOL9vvjx
	 j4+5kl3bpDLlsyBjXYK9qM99jjmt5N06WQ7gN2m0yBLEb4Wh6UdFKS5UoS5FeuNzuC
	 cAMPgUB/65KEoV7tHTSYIsI8Q9OW71T7B80DEReQ4rdTOalJ+IQgGq3i69gHvfkof/
	 6GOAtMUKDw8ojECq0BN1Icjn4JNezBeD41GNg4Tt+CXOVTzqgxApkYb0WIuIrdc1Ra
	 JUMEUAfqT9yzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3AACDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 21:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169757682869.26859.13265110312310614998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d05879a2dcadc31bc33dfec5b34a82041fdaf33a65b1cbb9864bae49caa0a633
Date: Tue, 17 Oct 2023 21:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697576828
