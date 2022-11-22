Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CDC1C15
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 664A5C433B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669154454;
	bh=/MlwsjyJOp4mjgSPmSQHSbUMmMs9KEtxNrgcn6zfR74=;
	h=To:Subject:From:Date:From;
	b=g4HawVThUJj9hVjbwgtVIQ9bDAfJO45RBa8sXAHuej+IAw9UJmzppwZndNqwK8Waj
	 5rhuYRXPz6Ov2/ofLXqUA/UlZtxxLWaZQr9osbUDJv6rF29UDFZZAi2bFps9P4wRta
	 MBcIU6jrHRkYkq8GPyY8hfRcKzcKx/U1tJMvj4vYeionqJruChML9100jH1+Ruh3mS
	 oCBKXkklASh1CXzpsaPa3cyW/7xo9SYbJLntXXUFKEm6lZ65Dz3iS2LNd2buQGP4H8
	 B/IsPoo8jp5zjjqWusMA5va8/LfllpnpOy63oURpiAaFohfE8ZJl672Sni/5FcPX1P
	 3FK9IzyLq5iHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FA10C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915445431.18230.6880070030345365135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33f9663a609ebc710d3d5e913bbf7d8d2bee682311302749463914749ebb6a2
Date: Tue, 22 Nov 2022 22:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669154454
