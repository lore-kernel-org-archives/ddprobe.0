Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB23C5A90
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69981C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663777253;
	bh=CXXJsvOCJlnNHq4yaSi7Y0T9E0/jXMocY4Q1Nlh6lc4=;
	h=To:Subject:From:Date:From;
	b=s7qyD2JHpOF79IR1Hubo2zN0SEE6GiWjXUXUI3scV1jc38yVd3Wwh2AeFaynhhXjX
	 kRC1Z5+5e4HDL7GXU1MVCsdURThvQ3AAu58KopcqZ28kZOJ9U+qd7mum60C/kgpgnf
	 3M5tfjwVIJOaT4Un3LpIcoPpW8OnVdOospzJynwObr/cWwFTp4MVyWL073BCSHPgF1
	 0Qhay0UAZB1C+F8rc/xKIyYYkgRM09gh5DKjNal6D01Grna+46o5735/jb4Jwom1Gw
	 rP2SvK1Y6wGN3XpIAiPAoZYEjpNyqpuNteqpg8ZdowHRP8GFhSZpEAgsIxVkGyjnHk
	 jPsvlgHQp0VLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52218C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166377725332.16824.11140688887272457142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e1dcf360bf2bb25dbff314787b7cfc01ccc283e7f4bdd975f6e4e1d495d2a9
Date: Wed, 21 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663777253
