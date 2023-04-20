Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459A3539D
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 09:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE150C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 09:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681984565;
	bh=CVogBA9NpjlD0O4fOQ6x1GEt3IcHMH9LBv2pWaWWkho=;
	h=To:Subject:From:Date:From;
	b=qJG5otucvS/+4vFWZiF5n+leyL3k0LCpGqpyZQ2QVUgRmSGKM4rEmhSSaT0fHt1cW
	 Od+keb1AS44oszZWRJO46sxKO4pYEWtid2T2wDs82L+p7OF420NfeEOWdgGthddWSw
	 QcOI1doSXFViRjClqvq/GySREFD651oRiFNv/esj0xXhmipw6S54Yu/8enQtmUYac5
	 2in9o6tuIKkjiDLX7KTvVH1XTY7try1ZHumNxivrglqmovO+VIuNPi6Z5SBxKWQmOV
	 gWLm/xSZNRvApPmmxMofFE+QNhJfDGp3LRz8t3sM0gY8RrzcaBAVh1KByHDxd2mcw5
	 aU5V56wWBDEqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C142AC77B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 09:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168198456578.26477.14676912594910729121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ba39d4ea0ad91b5203eb67c14671bdddf2ee18e28338c928c6f38b7a08de61b
Date: Thu, 20 Apr 2023 09:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681984565
