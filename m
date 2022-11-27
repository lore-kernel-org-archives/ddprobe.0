Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4DB53FD4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75DB5C433D7
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669577454;
	bh=kBWfJIkb8MNjzZTy5vy8KLiYJjPGv34HVAJdFE5mq3Y=;
	h=To:Subject:From:Date:From;
	b=irW49MCiSvK4t1u72GDdQDCjrbMsF7J/bce3OvBJK4pYin4L7fYE3v52DhKJGiIpu
	 jZn8y7bVTEVO4yhzEyC++ABZgiLhfEo4kjhOok/ynTXC2sVX6tCs51FgubVWqoipTP
	 RS28bgO7uxAuCKpNiyHJQf3vsXfCwxpX51GwqKqnIed1RzXOU9evWjALCt90wcNAG+
	 P30aI5itRsi5eLFbwaffMcnJ+I3dUIGcSSnlQJ4Pvk12uaLVY8k3uFBsSR3fQgu4Iq
	 M3vl5iQ1vP5CYTbmM26+44YBp9N6pS3mrRm9YHNAP/QM9U6BhE55vM97LPtAH792Za
	 f1yzwN5VgHYMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDA2C4321E
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166957745437.30329.16314951523543161861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696a6a4aa1f5b99b7087cdb6a4b985a0c8d8b7a6c6d75d01a56e44db3ad978bd
Date: Sun, 27 Nov 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669577454
