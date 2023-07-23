Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D6E3C1C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 23:42:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4609C433C8
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 23:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690155728;
	bh=qRZPb6EsOsN6/RgMA7ElsbNkfYdX1S5mCMu1IIAyyZM=;
	h=To:Subject:From:Date:From;
	b=kNJMfNn1SBl8xv3GwEcAdr6w9SDdUYBCRevpHyY81ZIdHEeVl0fJX3rw6XR7LQ099
	 Ichezapn58cARj/eGEh52QgrUxJu00xwYrllb1zxx+HGzZ7hCsQwEIoIW9Ug3FwSdP
	 Un2qfNsIQSJD/T1kDLh1vqNuGdNKenwkwFxyy/WSp4MqXeUqLYfHwFyQ60qU7GTXDM
	 gW0clFZFN7qyU1FLha8irRJet+/TGcoq7L8GL4GyjD+3Qd0BNkdI4BpdB3jpfLtUMz
	 qZjR6UCGoly4hOrvARu/ro+Acq429o08VTelGfW6j8PPCpsrTES//DRixPniilRbB/
	 gNF42B8E8leMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88E5C001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 23:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169015572868.2602.11185030626437758773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7469a9c0096d9a073248fb3148bbc4515013e44794b3c8974e9c650b0bec6613
Date: Sun, 23 Jul 2023 23:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690155728
