Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0170D1374
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8AAC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670676087;
	bh=qERUjR5pV9eTJXdtjJb/UuaBNIZTvzpfV/Mlo1BCDQo=;
	h=To:Subject:From:Date:From;
	b=l2ikxp6kdjfB56ohPBtrYpQwSkza2vlvFt0HNclS6UIKYi5aKa9XZKbVrG/30YoxY
	 jiudJvNo/b6FXN/87XZh7YejUiBICg8zPnB/V3vFJCeLOGnpX+LiG/WarlwUtLmYlV
	 3snrz3cufIqHU7YAjtnNRXSuimoJ9MT6mgIA5x9KsfWhAz4GCON96YJzvisnLLHS77
	 rP6+VNEc3lUZpG9h5XlcPjMLIVnesdahIr1EEhuN+DtmXVKCtWgF5yQrupNO25540M
	 wWWaIAI09gQrNqr9KCU7oi3j8E06AXAkZqyvoR1+FtO4ykxGwndOSlVQsq7/EBS+QY
	 +gxobccsEYRFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 886F6C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167067608750.2683.17762495316321907878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487ba48ee882271b34a1ecf60bdaa30ba89094aaef76a2aac68034b50e62042f
Date: Sat, 10 Dec 2022 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670676087
