Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB73636
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5EC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672819887;
	bh=QTMJfBlFBA1H710HC1FERop2IBbttoD5o+ILGeVao8k=;
	h=To:Subject:From:Date:From;
	b=f0e0dK1/5p7Wkqia+E19V5ZI0Ugkw1ATknHfOMZOV/3uQxQCA9U3DZk6SHqxvTJoC
	 fGcTpZ1WeGPC0tCdjsteXU+9s92SKiYf8D19Ca67PjOW/8x2XDy+QeXfEREyWmjtwS
	 Jr16KeRq5glNA8N2g6TGtSASmPDV6ntF4kkK82Gpo9BJn1Cr0aOVAKJpdiOu5zm39P
	 unP+DE+fhbDikg1GyhaxpBqa94OUzBWhKwPcpS5d04oYLV11r+6iaXxYZzcupDKk5G
	 mlLhSr9901twmwYeY8gToIvouChUSDjpmzTMXVgNZw8zuaHFSvm/e6SadrfJtgOn3A
	 uDeWwOdlWfgJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83988C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167281988752.16762.9163217490384630249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e924a15a49770f3cb0bb418387ed5f4d239b3976655739716cffd694f2cc47f
Date: Wed, 04 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672819887
