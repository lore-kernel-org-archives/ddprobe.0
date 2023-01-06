Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C737B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B9DBC433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672982487;
	bh=bGaPbOwaB87XXqT9UDXIthezkRVy0A0mUA5/jbq4Reo=;
	h=To:Subject:From:Date:From;
	b=bycp1x05aunFMuwB15jDPy9fWqq+2Sqbz8jMFKnK9rCVSKEC/Otf6RSI+/2qibE7L
	 8IMxnvP57A+ux94Y+6B2xwDCX7ejTMgqqLOOoUjwhOVmAko5dKhPlt6gvECOMTXwJ7
	 p6nXRu965I6UhEgaUurhq1oFkl9IA5oXQu0rZV6X1/1bGqU90VA+B13zmYFbwIOORt
	 BlGZtgmn3KCeLTuopbKnCGye5b0/M/i6NKVYGArOW8nih1HTAIR/Tv09+06sDh7H7B
	 lggt6zJOyUay7bjo/ypzbnoKvF+X2UBwtrvWX68G5Pm8fYVTmFpUSvwPZDG1MjDRlO
	 KN3r9FoBVi3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6916EC54E76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298248742.2681.1113166854469111915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f12f8713dac220dc13aa252157a2e04cb81c62ad0ae3c84681819aff526fa4
Date: Fri, 06 Jan 2023 05:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672982487
