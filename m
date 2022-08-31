Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C914A3D
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73EF5C433D7
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661973653;
	bh=ajuLGgWrVu9WYS5LLyQF+j70caTe1cxFSPJWQlaZl5Q=;
	h=To:Subject:From:Date:From;
	b=oi+K0w/fUB4U6hvtoBzHK07uM+z+wAXZCMPWgLkrTwZiUDKLDxBZA6J4KTtFH9H1+
	 hgQxhEaG8ISCAbNjlipjochphyeO24r+OIcVoJm88DyepcdAPfNi7N3KiEHHnlAAAQ
	 ulK8BIy1tRjNv0Gv7HHqAlsf2q2bYB6z/vZWDcuJYpCCgUVr3ffjjGjkLS/+XnDfxj
	 WLXND60xqbz8EGuc7RbItnTZPM+UbTvOwWIXhxKsP52aCI1srLQSeNyXRAgyi+cA1H
	 ssxGPx5xxcvdgIj/z1f3MOOtSpWwzrvyuMQpZtjJPNQbG5KGirIKQ76/YeOadE8m4O
	 zWppI7fZdjb2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A12CECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 19:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197365335.29939.6180100101850526494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b122228f6864284b7b7259f51307c2a049c5d3769583a26a68a7043b353ef7
Date: Wed, 31 Aug 2022 19:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661973653
