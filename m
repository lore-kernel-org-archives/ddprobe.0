Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D812523D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 919ADC433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671288687;
	bh=6ww+nxufmD2b9Wt1QYdOz25jz4bh+dDTUjTFJW7gwFg=;
	h=To:Subject:From:Date:From;
	b=F8cDhZNTRlugrs/7IpxF9fD/JGjbv1ALesSjuVOeWn0GAnwnpsRHg7bpKvBfj8lPR
	 P6oa80KBtaovRn+hoMR9cIltEe+sP8eskyqEw1Dmgm0F6UeNWV+GS3LQ6Py40c6eIY
	 NuuXhNvReosW6oI9fi4zIuusxmD8W3vu15yh35x8rpnnzF9XKy9y3opCOX/SsnR77u
	 60u8nf4TOHDw4PM/kIewPos8l/3doYbH83hbKaHPnhhnQQuxG6eLTOyw0qztXe1UdF
	 m6JsZlwH59t5jozFzktjH0WH2x9Oo1Iq9Zmb3f14mphXykdbIyLVdasEbJCpULTpEG
	 0gfupIDlfn4VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78537C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167128868747.21280.4711897129090838456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf604c3321d01ce628731d9f777bfdf65e39ab6d1f4f6dfc6f3a66b3c880917
Date: Sat, 17 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671288687
