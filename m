Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422E31848
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0937AC433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681718886;
	bh=JT+bg38O1CAclb8i/EuFNxztDBuCh7itBhseQ8s1hWs=;
	h=To:Subject:From:Date:From;
	b=H0fzlK7nCiPl8PVOIcCGNCZR3wKhG81yDqAQtJmuMrQTSkXU5EpPn/RLeyjTulssU
	 Iar+mAUohY1udkjl+sPSmQ8ze+n25WcbBfgyyInPC7yEL9yA/Ibl0zM6LpKJmCaclU
	 +vqqiya/BSzHSe0DjdTjqUGhWCc2KusmniJigRPPyQ16Of0li9LaVfQJaLBozvsBAr
	 H2fm/OwifQl3oFlV1WJrNEd+2gP/TcfNjyYvcIEy15MH67HD706a7MvX07gveMVqXI
	 culd7Q6duZLX5VmBg9EFWeWsbZMKM+vC0T7I22aZLRc+4gONMhqR/Ov+wCxH7Y9FDx
	 85VgZ05d3DmBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE05FC77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 08:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168171888589.13928.8774280144184212400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1adc4ea3a8d107af011ade7ead6e172fd35821af9afdfbbc63a614620e7ae35
Date: Mon, 17 Apr 2023 08:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681718885
