Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3B236B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 04:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E69FDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 04:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674363125;
	bh=iI4fODyr6z5EMWHHvQWRK6SeXJBWAz27vF0gISvuYms=;
	h=To:Subject:From:Date:From;
	b=IOL+5rsu6jZExI1ufcspYVeyeCWu3xgm3iRyKZwUDVkw8i6TvfVBYirl00doY0t+G
	 Q545ZxURUZrG+HSnTOugF4Sl+qMRQbQpT1wbj4ji0LdPIqj2GU8Pizn0o9svjTHSMN
	 M6juTvZ17545py+lSqW/5/Rar7kv8TM0ELtt135RDlO+xKBHOU+phTsXYFPVFXoUKn
	 wFZbN915Q4hgR/uwTVzBXMYOAU/Y+6VC7ZwtIYAA1VADRI18fQmlmkOy1zPD81UgG7
	 cQgLJ1k7d5DRrvFgtghiT2497pfqmQQwnqHmGtCJNadhumxURdPy7qGM2HMdys7DHF
	 i6ps4M23DHJgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F67C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 04:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167436312575.8476.7160621576303191113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b913255fdea4de681c7e05ec11803c1b185cd6a78badb3d93807c5f109238b
Date: Sun, 22 Jan 2023 04:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674363125
