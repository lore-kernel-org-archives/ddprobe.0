Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CA94433
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 15:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAC5C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 15:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687621388;
	bh=PO+6xSmd1GuNUAUhwFmTPFZyb/TIdU9ZTOhpHoT46kU=;
	h=To:Subject:From:Date:From;
	b=smSeI3OkFo4OLPy5TpIUwtskC8KuBn8GFX4sUBVLw4PYhk8KvRqzDSIg10QIyazPp
	 tsJw/O51tmTvUtLxDXDv8dOEJ9FxBK5BBawrYUWhApi4qc4JsSK5fJvoCi3VOB2a0u
	 3ilmjk5EZt+xshnRVg2+/rp/zxtU3ZdJD9YjRWn7V4JgiAFfdJUht8K8Ya74uC7+rI
	 xMjq0g22PdC9iRdePytRIqV3F92lyBqharwh1s8fqnRT7RM6j4G3WmgtKKXq6hl9xx
	 vn+9bYHBz1n89OYEhtUnjzxiVHWP14JOk70WTo+5AltvNZJpn9NF6cDKiYqtwJbM9M
	 lhpCbnVjpyriQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE12EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 15:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168762138868.9280.8661824910407987993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9337725f83da7020abde9a9c06c8b8e2d4fbf1003a52b16184877c2e130c3bc
Date: Sat, 24 Jun 2023 15:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687621388
