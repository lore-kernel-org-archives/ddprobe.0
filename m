Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3127623D3
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D492FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681108865;
	bh=2qCqxXL2R8izYVe31pm6vsK2ZFAWQxKj44WrLkPl/7Q=;
	h=To:Subject:From:Date:From;
	b=k6IahqTKP5S9BH1Sv2z6D+RjG/ooOu5gM+dBy5G3zqSb+Ngnnii9d+In+L3vH3E1P
	 MHuuHpXuqIzN+SGyJpcITweLJlqc8GXfgaP3AAulTAGQigeRAawuR/auzd/6Mq+Qsa
	 1g6Jo/fkCJRUk5vIOyvnbl2V+djxHHDycCPsuxgj12b0XRTv3tMsi88dhexfl9i2AU
	 +93AaYTaCsAetSqgRMblnBVQLNdT+veq5xmlu9GnfIr4DkvyMI8ubED3LKDaaUz65D
	 i5IBe+/Nib2ulx03B/dx0PfE64DKQtUFEOX4GQRdeEna3/t/Vcq8WxKe5jW96dROTp
	 ChFKiw8MCC5fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83A7C76196
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 06:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168110886574.24181.7433437589472613180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891b70a1399c5231c95ec824691fb077f3bb101a2a5bc41c74a855f27fc2f549
Date: Mon, 10 Apr 2023 06:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681108865
