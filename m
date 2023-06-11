Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2B25EA8
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2E16CC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686526386;
	bh=YLXsnYUgcBI9kfRHz5LwzwyXRxMvclFoy1lu9Gqpp+Y=;
	h=To:Subject:From:Date:From;
	b=lUKIccob4i9qFGGwfKm7JVfqt1eVB9XfNcpAOmrhk+NZeQaPstbucNcBgGyQZyHsg
	 LHbeeuZDy9Zc/n5xwRhhJW/XNEAotOB+VKx2DhYUE85XWTfXZxzXReT4LSEeRRduLk
	 SYDKFh8hE5QLrjM1ARJZQHOgWRpaxyZRD6yAlUufPlreMTInofJ7btMxkXVMhEihIb
	 AHQqUdUQdmPbx8bTUrutCnkLnuvpIvZ7go6a0+CiTuwudhlTCLiq1C+o5GSk7vF4/c
	 EfY2xYRBws+Cy+Qq4pwy+rPqbffqNdhx7GQaOF2/lGw7ThA7c1es8s8iqImcEbs5ZQ
	 i+I5dicxv8tXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E031FC77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168652638581.9345.12325930487366542681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0309dd824b92732446315d19ad7868c075655416b308ce78a7601a708bcc89
Date: Sun, 11 Jun 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686526385
