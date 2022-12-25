Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB2D36D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 04:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 803D2C433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 04:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671942687;
	bh=RaPVQWJaNgsIeMfU5g1c5HUxLWNaBZyII/NbEx6fTP4=;
	h=To:Subject:From:Date:From;
	b=td/hOnU27U3xzCVoDAiBSaCClHqGPAlbcmmYB8B3JMIuOcomYP0rBxyiooNq17u9k
	 7Dp5v3yN0Qn00xvAFRASXvlHlsedJ97kVuJEblndtFJIJk+IOy7uZq7W4JDru0punx
	 ybC7FZGJUVb7lSxjn2LSXFlpDRz5l1hlskHduiUI7NDIxUL/5+zrD6qlD/hxnyH3OE
	 iZi+wdiJ90Duj74UpG2M5Ce9s9y2GatNBnj6U7dTLzNwfUHrQvf/+lBL54OQwwxt97
	 YK9ZqnRQTtUl11gM9UiXfJI/oHTQdEDD7AisViGjrCTOHnwHqiGsbhJ8SB4056f8qG
	 TKKBsKBXN3lJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 635AEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 04:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167194268740.15625.9354470401336862660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1b2ac31957dbb7d5c7d4f09f19dd5dba590a1ef324dada039c1ef31d18027d
Date: Sun, 25 Dec 2022 04:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671942687
