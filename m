Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6B263C
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FA43C43470
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670410854;
	bh=difRluSDFiVYSkXf51k76qqEUjtJXxkt8VTnwd8JYV4=;
	h=To:Subject:From:Date:From;
	b=BvqHCXQbYXJNCIHgPimYc4KBAVCzsIciHtX4ZfzcWdmpNICxFuoGAjR53vA326Hzn
	 fUfmiPBfMbwUASGMLwB8SYlR2Qqzz2tVmY0jObguEKY+3FzrAwFbqaC959cRM4IFf/
	 /FlCY+COqGeMxL8oz/tOjHI53U+4XBoUVY8Vox4Y0wg7nugPSlzZ7/4GryX3fnQ/73
	 twKXKaXL7yQETxiaPDtCdFCSL5PsP1QxzPyfMvP/OUwbYkQukA34L8+2U/5cS9e4hj
	 uSm1aVcYF9kuDTh8gm/IxfAo+zdxAdMBMU+j1tf9UtZnLFpy1+pbhDSQptDe1BMz5E
	 29OqDRmaEKa7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD06C63706
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041085434.5517.425711042694019919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40102ed1a521399c2c045dc93d22dca7dd8ab463a9ee468dfdb99a9de93add98
Date: Wed, 07 Dec 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670410854
