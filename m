Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70AF6182C3
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01293C433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689877329;
	bh=XiqzzlZq21X+1/M1BqvNzLbdtd3X5eSk9i7vJOzMqq4=;
	h=To:Subject:From:Date:From;
	b=pcC+pBv/IE8+zjckwO0fgdTghLTbXxcaM0Gmf7lnHVmPL0nJXY417HVl+Q4MfumgQ
	 UBx2Vt5PXrWIV8Xy+1h/jZv6mOIjJY1PXvvPu8ds3kDk5rvkcFZdohuAjktlPKs6C4
	 2boDQdMzkVgTMmwN5BLxZ66eKyIqOjaVfebn5r4tZm1s0K8NLPWQqYNLmk7hjfoI3r
	 V0Hg9Bw/joHUKgmBt7+1sccNhb915xWK+MKrjpX7mlnQzoFnBLzKH/k7BoLk/UEwjK
	 bpIR6EfqMNggFtZH+zXvHzK+CvgVUefRmCcwpZi/Rdwdu5r0aBAhFvs1NlyCxUI4iN
	 E2uDv9i7EbznQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0FC3EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 18:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168987732884.15278.3278635164847099582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 846c4424dde49b5a0444f08cc258d1eb78cd4dd559fa188e767f418e9349afd3
Date: Thu, 20 Jul 2023 18:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689877328
