Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C16BD39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 08:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2F5C4339B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 08:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674982385;
	bh=HAY7gQzTa1lcfvy9vwuoWnnR5Do8d+JEe70mBeKyDLk=;
	h=To:Subject:From:Date:From;
	b=U7Uu+uolZgMnT6FsWvMSzhQGkMLEoTHrFWafsebRSnGqEnSa5acIwXQPe7vNFrhPG
	 EB1FOXdnjigW3b793uh6leeEW55381WllSHjW16kQhwqJvMjTwsizDgPrxKncts121
	 NuioYHoY1BwUCVY9da/wbdeBUhlItY+ZPuFS1uUh+M6UuBxwNR9JN5y8f76Xd+jcRm
	 RmdZSogdrJ9YG5FA17pzO79zrOsqxqJe520krfwP5Lol/ZYFLP/65xBWmjKpaTB+QQ
	 8oJnxehsBS9+wYJvna9hW19GbhmkQmXQC5Qickb3cPjvRoRPulwL4PhBwFLLJUiz3q
	 99M8VgLRfvxRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C404EC05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 08:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167498238579.18586.17872194445794333829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ef010f88b5f95992efd8c4c737a004ee07a06b0550f7db43a7ec2349fca3f1
Date: Sun, 29 Jan 2023 08:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674982385
