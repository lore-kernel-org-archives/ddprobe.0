Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8256F1101
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 241CCC433EF
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680916866;
	bh=xX+2EdsmV+KfNxDqX93KK6kBqwwV4hAx2sB6K4dPUfs=;
	h=To:Subject:From:Date:From;
	b=m/P5zL0/3hkXUW6qp1YgCo3W93ToSinhxSB/BTV4lPryGLurhYZTe9p4J+kKAe2B4
	 ac/Y6XEyAcKL6CJ1ENvhmdfn7U8EX1H5neiaA3tVNMo5WtO2FjMegRPa/KzfQ/mW6B
	 QxV/xa/5noCm5uEI7p777ZrG5J++ADTtkk6xni+TaiYh7VqKzhzrnBibo9NY+1o0xr
	 zKl2UlkDkQli7Dz7eh/o+BY6gdZWlZxmqSysbea6ewHKzfZk25LdjIpFvoAiQ273K9
	 U6VE2az4a7WKRTWdcb8LixrvUVzJhSjN5ZHuM4mWjZjnbrPrCCOex282mHGFCU+VrS
	 V8nEOFC+A30Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05A38C76196
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 01:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168091686597.10963.15473970221239283404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 919974b3020e70e21276f43066a5af41f3fadf994509686702af607cb7ba68ca
Date: Sat, 08 Apr 2023 01:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680916865
