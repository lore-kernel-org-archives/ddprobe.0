Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D460917E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76FCDC433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668663054;
	bh=dIGLfMIY31x133Cf5TzYwVMvv+j1Zw0tXVleXn3VeIo=;
	h=To:Subject:From:Date:From;
	b=bTrdm5kY201t/Gn6J44SeP2M7u1gj3KkvDLCUJnZZW86HEevXLL5feh3Bffg7TVqI
	 t+JNPuoQEtXwW8QvhWJEVyRU3tR6XGNBba/qmRv90mojQTynF9VLjrCQmBTxdmhnb8
	 9kkLJQE9a4HgRiuCOsCJqWjwmahj8PqQdmp3SvuOfLgd9k7313UxJEfydC4tS6xkaS
	 /cmquLrqNMloRGi/4qsOvH5UBfi0iERBHXr0vF9oa3Qups6XP686aPsMwoxSi2fkYB
	 lUWnep6PCJVjMwZaplBTpldYPYURaDc7H84HaajjX+5H65BnX8wUsI2hhwJpfMdcgP
	 vfJBC5Neh+Yog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C058C4332F
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 05:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166866305436.22327.6401317554604417163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9520b43096902de21ff5e869950f88a7ce605e2662e3f99aaa4497b46c0d9259
Date: Thu, 17 Nov 2022 05:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668663054
