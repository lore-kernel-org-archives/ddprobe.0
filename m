Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F920179A4
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTO0c7Gf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B485C433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700776096;
	bh=2gkgGyC4am1VpOieUUJ04nxBzrK9d7vGmghzi+I0fOo=;
	h=To:Subject:From:Date:From;
	b=jTO0c7GfpR/fuZainpFRqdwbizcwZZVNiAfDQVpU7GU4EjbbJP4fZveOcj+YZwqP7
	 e7opb3jvURyNAtMPNWmDINMQ9t+jMY4miRG/aZQc6WW3XkvU+qLKQkkx69TFJTTkci
	 GymCF0wfI/wKuPxlNZOWgzRkVmYSMt5a8rQYb0sLQX/vjRrPuGdAp34RvdlOCUu+EQ
	 GweU1HXsSnQcQh/e1WV30bRZ6kzshrG8I7o8DKncpAZ0M5r6NVqSf70IqsSMyYWSIw
	 BDeLfyk4Wf6H28cl5XLWMN3PVsYI8xW2YUlsOq4tKSwA/Ck+b1ZCYF8YFS+JBQrpg7
	 LS4Hx14bX8ARg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3A6C61DF7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170077609637.30013.14918720393703281945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa3544360cae0bd05a43b2dc0abdb22e91b79a50f5438a2fec67bf142f4824e1
Date: Thu, 23 Nov 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700776096
