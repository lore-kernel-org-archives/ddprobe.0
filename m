Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365FE3236
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 10:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF847C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678789685;
	bh=frOfsB3pt4QnOitW0JDsGklcwShvUELplIQXgzaTMgQ=;
	h=To:Subject:From:Date:From;
	b=oo9BvKzMA/k8Tr8A4txiRxdJuUcUPu2bkje/Ajo8DGxeC8KMVDsjQzd+SfksJysjd
	 fufGlCq+jghvDjE7PmEx4KO6G5K2Ja5rmYbzQdpxEAUDp7jnfGJs2qtnp8N9Ze+3iC
	 uPMA9z5UiizYyhPBD50+YsuMbgVnWQzpxIi0yNRGrfX5KCF87FJCuOqQFbml3ELGbD
	 S8URZwYCczA+1YbtpJJ/MvDFvlvZlfHlkb0ncuYxFOu2H/NaeWSzigNgtbDNyzILOU
	 f+UGY6gboB0tsJT2fffgm0853jMjDf8QjYPFZwVx2DOIuH6HwmLPaYrOkbW/5giSSQ
	 vhlLe1Pj7JwtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF214C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 10:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167878968577.18737.348101514334520583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70b936f722dd46a1f4749d5081c338e08cee5c392d179c6587c70c2dab11c997
Date: Tue, 14 Mar 2023 10:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678789685
