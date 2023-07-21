Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D51100A1
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF498C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689979328;
	bh=WzNJQw37VTlCk2vtYTiudeBGp/9scUHWkbT+vpjeVr4=;
	h=To:Subject:From:Date:From;
	b=SM77Fs2nUrvcTJEkfhWeQ+exP3zYAhBYqgJ8UPGmPBL6b07oXAPIKQELZymO6qoUv
	 xyS2A+CeTsvhsos82EtDRNwEI+9H+2FKl2y2DX1fTQ0/kjCX4aYXbTFS5ooT72u2EN
	 Y3Eb+50bIKFY2dsshQIX1d5+Mijc57gxJP1JuOeAM5nxu+6z4vvp6bNvvGDuRUoLAE
	 OVGDhWOc+rno8WW9M4xAq1OhaiVROhYaPtjv0qGqspJ7XNJVI+iD4M3M4RIvRSNyip
	 2V4lllYew7bCXnKrudtkns6yN5envXwzvQfjxeGjghu+ftsf1glwO1YJoTM7FjDVX0
	 H7X7wyiqPO+GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E3FEB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 22:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168997932871.18167.794330994502743400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65bd262eda38acaf4058f7799840058c2d1f05757f04cfc70d08b4b634154ef1
Date: Fri, 21 Jul 2023 22:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689979328
