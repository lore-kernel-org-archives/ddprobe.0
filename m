Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F5915CBF
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B708C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670340654;
	bh=xBL7TVA7c5nD7j6ZBohVmgho/h66kLsc0Z3WE/aMqXM=;
	h=To:Subject:From:Date:From;
	b=NYQK+MPP06ySQ03sqAt2GS+LQNVbU6o4cXIDRdE4K6120cR8YJQcJxVlzQbDGA88t
	 koISRqKeWhfcBzv6hG/ZFrio8rKwES2l1hvb0aHtLQ72Ym7FKiJq/GdilxKUagqwPT
	 u/lgC9Fn7vP7z7RHNyfP/ogV6C/ku6vmZStYqMj2e3vfaagQ6o2cP5bYSYpQq6gCCH
	 RfGHWz/viAbb4o5Cf3ai7movBN3V6LdBJSgyqYpSSPLUPRFSketfE6WZMQFwg/wFyU
	 wVGGhW20lehp+DYtN780M/bmwgiwF95pk27jqvx1Bw+PCxDcRC4Tl4U6OvZTMe9+Vj
	 fa0EZQNBrlkCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5172BC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 15:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167034065432.15371.3216977638529005693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a0551ad640014146985ff197f6df005ed2c16e41297f3213f7ddda95ef1495c
Date: Tue, 06 Dec 2022 15:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670340654
