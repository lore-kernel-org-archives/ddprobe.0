Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 520977F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:27:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C113CC433C8
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688941628;
	bh=OVvg4+kMn7nsSQDOKGbYAkb4WN4mlziu4LfEVT2bXys=;
	h=To:Subject:From:Date:From;
	b=JHzcB0Hb7B3JP65XKYkJC3EHMJzE9fx5RYW+W/oyEnBvi2GYNZ0w6V5XsJ8TXZZEA
	 H4XPuGUmRCkIHcI4xmv3sKpfFYCc8FLdBh8tNK6UhE0Q76w1sJW+XVQIdCgJHkd/m+
	 T7aztCCHfeRTvPZAcZMous+AoNff6bSFHA+panEz2N4EQnLkkVKll+p6hU3133NdDQ
	 SRhY7+l5rp7kO0toEKUbWS643P36hQuuKOB4fRZ4OB5yEQXvkf84Nq6qC7rUtjVDAc
	 wowwZ+Man4gjIkg2JUUTMVT5lIwY19th1v3ktUgbRlfns5EjlZyCQR8I5EH2q1az1l
	 gXQQ9ryCeE+Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5469EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 22:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168894162866.19994.14547554698168803661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6c49384f4069cb874dd072f328466d74b1d2c7532b45ca7ce407b4a32de62d1
Date: Sun, 09 Jul 2023 22:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688941628
