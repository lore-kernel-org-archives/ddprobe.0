Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B421920F8
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68CF8C433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665756653;
	bh=DCYI5qBiqidQ6zYFFFkRk8vbo2wLzH/+lP/w5SW1E0U=;
	h=To:Subject:From:Date:From;
	b=Lqd5nkc9gE0RDYQqyy94aixOgc6Q9LsKAVoQktJwlis+Iyf6SpWx1eo4xcBiiOc7T
	 vuhR3aT1HdpmZfO/lBvJ16dx4uVmK02N2JNlsCWb65typwreRY3eJWKkOnoEtwg2ik
	 M7jicDuqgrLldsGDlk3tnY+uFp/uLR4wp97dKVBupDlniINX0/XmuNOyNLsVC2eljc
	 NFeJ6ZGIpvHGdhWwUj1lWnJasNSblwyN/QlvjlCK23299zanicnygZ0zR5p9gMaIWP
	 To9hu/2Jqbw8SOwFw6G+2noUmkIUOOJiULz0ans1oaoPF6HD/uzo7HyE+HdMsRCQRV
	 x/wFCv3TPJmgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E738C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575665331.28627.15212258007499109527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f3683f26ae901b93ba3699c890b530b86533612691adb0e089f590656b09d4
Date: Fri, 14 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665756653
