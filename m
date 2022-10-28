Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69A32916
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6629DC43142
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666975854;
	bh=keNa/bTkRkbDEBSYu46x7lwJr7FQNZAzdwg28PXWJ6E=;
	h=To:Subject:From:Date:From;
	b=TZRgukKvecerVH7j+13ZWL16UOxLGqVYZCUhyF0I36sGHKg3gon4tY/K/yHBRosjk
	 V0ngjpBJXShYHtVdjWHD89sM8twN86g6ydaGYYZgjpo/QXT7/6xFi/Xi8hWM2TghZX
	 8v4c3/jWxUI7YG9VvahJNKITOcpKhqPon0DfA07mJURWJGrePvBeUlSkQyfs3s2qnv
	 ZF5xtMwRZ7H2OaM4vGe09+a1ODZQHZjHn4gd/B6SYt2GBdPI/jGZV+JUf1lWf1BFO3
	 n1uGTCURdCVakMdCoYQ9g8JxIVszHXnQyZ+vqh5cAAPDV0yr0pyYdbDaMsEy1EavVF
	 eVPl4mHte9lnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A91ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697585432.24677.31747710133669788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6411f0cfd069ff125ca5fef2b6f2b43123bf94b079d59bbb39e2efbd1c0b89
Date: Fri, 28 Oct 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666975854
