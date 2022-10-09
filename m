Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE9A51876
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77CF1C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665337853;
	bh=6x6F+TGP2gl7mX/7RWfiLmsYDaf2H2YcGiW87J2iR2w=;
	h=To:Subject:From:Date:From;
	b=q+eGpX4/4LCNet4hSLRwNmlJBQberWBzS+HzGaVeoJTfkjRHCobUvOq/hgsgoLyN7
	 MYUDzH5zxLGf8AWsTV8FOOJVULISFCDs0thYV1nAco6x45LuXNI5b4nL5J0YI6JyrX
	 zEOSZR4o0KHF9uq8ahYkFsgDwIqkhrgCtuQNd3jYVxkiX4LuxhsOECjN3dEQUT7wqP
	 /og7V01r6YnFdQ1hRXVt/xmUjkDcPe6ZQQI0ALMWVU+7jf8CcrqfvoE5p6Ha1cxC3A
	 wJ2+iKkpfesTvbmMJuoNSm0UWOLyBlUBKAnW6h3NWrOMRSRdHV4IsPrxVXKaFh+JgV
	 Icrs7e020ZqPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C454C433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533785337.21572.1623089672826363281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a59d376cb1774e2706c800146c2e7b9645988c1a8573fc3777df5601f96ba649
Date: Sun, 09 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665337853
