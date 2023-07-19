Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1327017D5
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AFAC433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689736868;
	bh=OKgV+CDWansCxS7HPANOrbxSQ/6aFckGqGDnqNOH3ZM=;
	h=To:Subject:From:Date:From;
	b=W+PbkOqCuotd4zalEi2nFBtcUlZFkkl6PTtgihAstkOD8AMOTrNTKqBncCltsnuGg
	 HVft597ayZk41JZAhcH7XC3qkFTVeGNDiBcrgS64614kbsNhpan/LdACvDbJMcipbN
	 BTR1/K+wKfOdTiFX3pyJMjJXGFw7nal+mEoHMcrf7HCNNPzAt/SKS8Nhoyay/TlJEG
	 lSO43ipH6IDlbmoYLae43XyCDQuZ9yhh7iVxh7b6xFprjGeXfaMRj4WVjbp8E6SaRv
	 cCNkJ6leMKi29EW2VMVgXxJ0VZcwf7+8ldY4YZunNW1ypnxIWkLHpqF1vOXl4W/0J5
	 Kmp8etPgWNurQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AF4EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 03:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168973686873.18021.5092886510311012453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f9cc8675307a94f2e13abab4dc5b03316ee6395de446f237c843b5f1bea8bd
Date: Wed, 19 Jul 2023 03:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689736868
