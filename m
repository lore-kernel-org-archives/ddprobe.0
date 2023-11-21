Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EDA51C39
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a8ToKcSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBBDC433C7
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700584096;
	bh=n20x8C8bbRcSiZwPLLwJKC8wV3wMsGlzQVn7bYskwZ0=;
	h=To:Subject:From:Date:From;
	b=a8ToKcSbERp5gyNOTuhf8tAj1Ly52ckK+13A4YJO8WIe4J8YeeDxAkAJJ0d0AlSuY
	 JaZ2a04/ObxmirIzBM4IqA8lwGMPjlWStfgAg8JfSzsyu71lgXyOJxqB7romYPbNvH
	 4uw6aRcg1LM0XYmeRsRNz/nWfGvMSOVkl/BUIUSpP+PePcIrv2O9tmR9oqAbH4bvXe
	 QKcMT5DL5VAEm5kDFQS7z7SRUgbV81Xhq9Wq6UHcMQ44g6bn/LJ9+5f1OIZJ2Rf6TG
	 f2NbAt4BNetWrlIEc955Pnj3aQZjDxuzGUf7ASmKL+iqnf20d4w6iU/Tn04pgHrld3
	 y07kOnrSEjZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 659FFC61D90
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170058409640.4723.16865337909062405627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf473715ccd934aeb302d2774e16043ce0b644000633402900f4b886f988be3
Date: Tue, 21 Nov 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700584096
