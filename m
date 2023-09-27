Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8351C681
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:56:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C284DC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695822968;
	bh=U+PvR8GIRt1whQNsn4dH7h13G9D5JENt0ujJ8WPk9YU=;
	h=To:Subject:From:Date:From;
	b=WnAXJYfNuytcF2Hbk4GqRYar5gP8gYdRiCIKCHN5bKa2vXYFSKThRjhsVFR0aa9hP
	 coaJpewRw4PVcZTrvD1hrutvsya3ahpuftExHBbUFxaGVXLv2fegq5u0r6q3oJIlAH
	 l38sLIzKftD3qUbdkOEpu1qkZBqSyXdIp0oOoIrzPnYSvZYSDAC8BwP3XDDQz6R4qB
	 hLnsazXkr2maf8VW+OBXbrltTzQq5kdadMtjZ2wCXJZ3c08P7zhi17OTqJElMaJJaT
	 7yDRqJUF7j9a6FS4+78CPy+SPM590vdI2UpKo7/xtA+jJT0QCdh/IDGuKh8mdI/dvy
	 l5aO3+3eKoKgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77DDE80AA9
	for <ddprobe@lists.linux.dev>; Wed, 27 Sep 2023 13:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169582296867.11837.13302504399364521971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9330057056b72cd1da030dedbcd4a9d814120573e9a5f8ef22c5598bdf2a3c
Date: Wed, 27 Sep 2023 13:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695822968
