Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF65182D5
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BEEC433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687874588;
	bh=NSrhJMv65yTTusUzZTG8cLiWE4vYTKI36XCtkBUX2JA=;
	h=To:Subject:From:Date:From;
	b=stQFt0tGCxtB3PnAN1l3MDpFFW2AUfzaLyMPRByNTOsrEcPKtcbYgdONbpGUXmVyx
	 XEFTlg7SoC2+dvo6OPj6+Ov3RUjSoVQ1xDtEaF9pIBy0ZfIl9+fkRlXbW91Ix3VF9J
	 aNnY6TbCSXG4eHSlN4Dz3YUcfAtI/v3Ppe2yucT95RM1QdpVI7ahi7bJgS9siO+Yhq
	 ynMcn9bG4TPZg63/FmUifsoQ+NZml92g3YGKGkJqM5bcYm+GhHBgo2USx/b2es4nHv
	 AAgsqjxyjdvivxQ7CQETtI6Z+Jh+uRpVJaz+6nioI6LCIsG9HiyVaM/+uxpthWp+YV
	 76BdqYIZUI02w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6EEFEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 14:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168787458867.29786.7269414718188797951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276e56d77d9576bca810682a778cf8a81a5a2876cb958815422b9f5271446325
Date: Tue, 27 Jun 2023 14:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687874588
