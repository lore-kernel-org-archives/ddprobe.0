Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BABD315B5
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF8BC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669341654;
	bh=VWZj757pO5kZ/PzcsEspuK/fplzo/aemHuQ4azIKZp4=;
	h=To:Subject:From:Date:From;
	b=UEyn6yo5gJJI/pB0AqO17e9wfZ1eb4FCJGKiNTMc0zEvF4EFO+26DPzRc3tM2s81V
	 +tDrT/Q5RZcoSLpg5S1cpkvHggq3auPya+HgH6OpFYeRR0pDa7xLfJHg8iUBLTZHG/
	 PDtSFITcKG51BiEJrBhhv6Oehuy064QRoO95SfJKVYIh7SmCVboWiCQ/1ioAMwF/OA
	 xD8TiOSEnwv6WhsoyiB5uhSXfkDwhd7SjH6cYhugS5dQnSHf3ZGLKRowwEXRCwm2od
	 iNzeEyVbBSzPdkQRhYLwxOb942p93yTE+74ZVgbrikmDRC+QuiIbvhWqws3ule7iSK
	 WiXqa44IZMaAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50CE3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166934165432.14408.7298721314591372593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0671cb001832e3df254ba5f6d28fe3b61379df7880c268f3d1ed71fd54a208da
Date: Fri, 25 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669341654
