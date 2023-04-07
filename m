Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3675BA46
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D40C433D2
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680830885;
	bh=G7zKlNa3Pb5TlgYzoBDGQaWdy+BwSgqF7FXwhKgEoiM=;
	h=To:Subject:From:Date:From;
	b=lHCmkNBS6sg1LKZ9W3M9UJvqmjga4CTXDRQejGbJWKF0Y0VmoyZ6Y+5x8aVaby4+I
	 sjoQc8xp4s90lT0gM4wqaxuxA/amxr3kwnqgFeVv9/ypfj19OOcqTvoWp8seCZ8v4A
	 SsxvetM3uaJ4ld1cr3XOr9mChWchxBPu+Ls7XVsoLJPQh/FVtjoX9jIThCD0l85i9+
	 Xmp0oTMGf1V8CGhdUI4k9ZbKul0KrnG9Vwy4qCW20tNpL1sohIfBkp6TNfAANrJGMJ
	 Uu2s0436Cr4YsxMkf76SocUXffyaQR3Rg5HMWaSR0QkVtkNeT0id1tMrz5kIWuCoKH
	 lzfYl5GOEyMaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9DD2C761A6
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 01:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168083088575.7671.665365994318011530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99b9ca6a3ce7b64b526602f443c1113729452cf02f3cf6dbbe6a7e29ebe3ad65
Date: Fri, 07 Apr 2023 01:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680830885
