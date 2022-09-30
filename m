Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD3A5A66
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 665AEC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664553653;
	bh=Kc5zbBTGOZfSPOG3+f4/1kRI0veMpzV9ekuW8Fii3vg=;
	h=To:Subject:From:Date:From;
	b=tvuI8Yur5aNZZLk1TDdEUTTZfl6vdV+dHzSQTvfzRozTEM1PmrhfHZQa349itKtFG
	 fzIAEVGcE8ZHVwitdsW/59f961kjgqjTBZT+yQhiddslmn4Zrub0sphdHz54eAWJwz
	 V+fMN0yqkunO74nqeeNpc9tY8RyKXn8BgHoNaew7UMFlQiyj8jUSqCaY+BaprRs+K3
	 WRvgkj/Np3VuO8eX/MPfIkgedd0mntAEZCz4mf2SYT/dDRychkAw9hPF8pc2YX3Ss7
	 3+yMmf4JeTKElgppYyRPxMuGKmU/NXBEMFMI4c9FQGQZKqeYN1yV0WyY/XAs28jJYI
	 q3NwZf2KTOKbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F59AC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455365331.15993.167075025094304443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4dde18edd55b436d501e012c68b4e3315cb11d27bc7bf0f6c9aebe416f6a6e8
Date: Fri, 30 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664553653
