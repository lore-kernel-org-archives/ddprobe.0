Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758AF1101
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 01:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4707C433C8
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 01:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694224448;
	bh=nORzAlMS212GNsUGdSIysm9/JRTC6E/8BxQF4vdqc1w=;
	h=To:Subject:From:Date:From;
	b=MQiL6xUpTHRedSbDqn/wGluWUPbbvurGUI3q4l3uEmCavvt5QGuvQxoyZiNQ/3HMJ
	 V/3BpDcvT1gEdtlA+QU3MzFjtsLAYGQkGsXt26euKiNlv0yVLMV6wVrvCpF+74pzb9
	 eYsJBJbWgUzRs9EBnpC9VOfvVqMNXXtTkVGzOKp6R227XjFQ/XKOwJqFDVDLIyTw54
	 UjGJ6T59BrupepzZ+aLATfw5OeMlCcbcGpnO3i0fqR+SCKSzRiFOXPS/RKsfFE2bUE
	 0ykUYYeN62dNYZ9EDdul+NdsndeD69ntcuRhIaEywqvadXjykYiv6x+Fz6QUdUNbuK
	 GJHRQRSmJhxNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82D6EEB57A
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 01:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169422444872.30299.3892313146933410739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67a01b786c59eb5aa6550c54cc9c11dffd91f9ea8da3fc50893fc8f4e3445a7
Date: Sat, 09 Sep 2023 01:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694224448
