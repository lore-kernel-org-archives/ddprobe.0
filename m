Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4141078A
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAB0BC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687647788;
	bh=jrdzymIS61G3iSUgRkgie9TXq9GutuhaHDaVLbJJ9Tk=;
	h=To:Subject:From:Date:From;
	b=ipdtoSf4AG7gSeJpgyQeWMyXf29IoBnV0eijqXpULOIa6jvYlC6G4nLAuiRHZbYlb
	 5DhYs+12SMRm+6brs3GyoNfx3TXa7WDeupRgIojanIagY0VXZEfke4Itt0i3VPj7JS
	 Q0l1+noa89ycpdtVEe/hZYoVBph29UlUn1JnLYcCUBPlWUKpal0OUHLjAzNb8bqqME
	 Zs10MrFh3MGbOZhQ4NnsIltj/8qAvj0NIFb57CQ6SiZOzrnVR1gQDW1CHcx09CPQJ+
	 0wDWcm5wEp9JWB+Y798SfVpwyvj84ZxuMiFLyPDkWgCT9F7FDsDU3OZ136a/i0u0BM
	 rgl/exkQs4ygw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34CFEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 23:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764778869.20506.5938149042693576396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deaeb18496599b7c679726718fd0c4860cb3c00ed50047df28d52a280350315e
Date: Sat, 24 Jun 2023 23:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687647788
