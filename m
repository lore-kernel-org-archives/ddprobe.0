Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD6E15A3
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F74C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663902653;
	bh=FlrSQLOTj96l5RV4CBUzbndRZ3oKQ4JQn8b0YkVV8lc=;
	h=To:Subject:From:Date:From;
	b=WvmIle/gY7T02rcsx89HAiRKJ4nixar87eRSUXuXVXNrIoSNqDn8pd2k+G1McOegb
	 EJWWAwViWNkboqK18BDM1FMVW6Pcdyak8zMWaqOVpjxXSQrE8sPUT+7jMV+Jjih6hg
	 ovFd7xzG5fyCrtw7TDBk68RHb3kB/le0fOWFfSY7Bc9jHUSFS7MxejmFzP4y+bIAsu
	 TfZVp7R+wH9RMelc8vQfttv8eW2Hit0P9hg6HkJivJxpxfI1V1JtmuIdB3Vsovfhkh
	 IB0rtRs0k8UhyEdXfSfcrpFOhI55Fj0PHafF7bPHUylf3uOVApMR/CoL65gWDXrXnR
	 zgfa8Knlm07rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D09C6FA8B
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 03:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390265336.25479.12969886226335945980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b60afafaee70c83647301941991f1ca09cb8ccdfe2e9b0ea5995a66509eafc9
Date: Fri, 23 Sep 2022 03:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663902653
