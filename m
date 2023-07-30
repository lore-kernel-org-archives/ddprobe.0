Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FFA14F92
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF65C433C7
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690754528;
	bh=Q4G7aR2zuMLH88gKFcpM0f3N083AJKRXRsinjnHPZKU=;
	h=To:Subject:From:Date:From;
	b=MbsAYgzjKk+bB2e9u01fdH5+Nvwd8X2GQaFrzfVhQa5AkSokqYVM0lBMktgK6F0RC
	 4UZIfu6pLh+SLA3Keg2VtzkBoEVeO+ijnhlxgpj4nPehWVEM7yHz64Fv8WLvejm5qz
	 MxHM0nUQTpQdmm2rW9ug6euNUxoVKnW2uknGvebeEfGYV1+J9c2fvd+xt3oXS05b8W
	 ezn4qyV+QLryEsJ+j0GGQLt23wdY3wm/unN/nzlVxqdI2mJ1z5kLEcKRhvNKTFTET2
	 Qy3m9iYJ2rnLLf7ATbY6f3m0iaubJx1DBwcT0Zk6GwZDnIdxXQ1m7V8WjlCprVCHxI
	 A6Ohk05UemPLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3882EB64DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Jul 2023 22:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169075452865.1103.9398814570145311582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ab409f0064c14889eaadce975af0eb5f3e1d7eaadcb5c2670485f13fa3d6c02
Date: Sun, 30 Jul 2023 22:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690754528
