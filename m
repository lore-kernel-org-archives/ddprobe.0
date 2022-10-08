Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC04E5394
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 725E1C433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665255653;
	bh=BhSz7OWLlmuu1dEOU6TcYVpcbj4+7engmCroeNcZXBk=;
	h=To:Subject:From:Date:From;
	b=S2GtiE11qm+8AAxGM+PsUzedUlo9RumZD61GZZThrNHbvdFP5qtousUp8clgXM7jq
	 nsmFRxhFrYI0cs4OscxgRm6Y5OT1dXC9lKoTTmwB+vfrf/mnQis/RN4lOHt1cM3Ns9
	 4O2ZUzhfm6+WrXrQU0neLP5xYYfVlQzPGPCQ9iBsJ3uylKHVPM0wWnpgX0nzCflOLI
	 rEJg5edZGLPjihFYTAAmVFUnqj5iH7GVwmUCVmJxAJvTOA/jbhPuPLvKE8WE8X+l2c
	 QjfYODBv1XoC2wwtSoDKnpwfA5IQucejYBLZfP2eZ2DH4CUNNB9x9HHJhbrR9n86eP
	 Drck1srIqU+EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D9BC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525565333.10241.15668426551527951719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693a788ccb0d10458f2668682ef3f46ecbe1ad3a29ac3d4c739187e84f67f9d3
Date: Sat, 08 Oct 2022 19:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665255653
