Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2471380
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B5CC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688792828;
	bh=+YvCU34xTWkpyN+fS+6McL+6dv+hJ1j1MZ7Zu0c1PXs=;
	h=To:Subject:From:Date:From;
	b=uExhj69C/sMIgGMMv3S9gexBmvvUJmhBMfJPLZGKcn0oXQrDaAlxa19Kn6cD470dT
	 Wg94j2eF0JA3iXWSiK+QKiop1jVPk6ff6+zCyPXNXo+pYJt8XTbZH0bk8uMNc3ZQfo
	 lW/6mbdj03aAyfHpAB5lH6x4bDRYGLDKjhBTMVoKGd3LNLExgELkMVnQjp8bn5mc2D
	 o++xsfn7phEVs2jGDahHZJOrQrpTvtpAJeq1cpRnfxezJEJxAxmAfUe3I307b9l+KB
	 ZXAup8/OTyI37nWrJKekst+W7+80gpFwpSBF2CmPVNuJ/hdVqmB7PJhUYHabj0v3IY
	 GPPTaT9toLbiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B98EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 05:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168879282867.2922.9096868076076306302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b080bd4031554b62ee7885167b78bb722a93bdba90bbb0b68fccdafc79278e7
Date: Sat, 08 Jul 2023 05:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688792828
