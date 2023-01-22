Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4DD3D9F
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 20:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6B5C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 20:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674418325;
	bh=N3xsyyq/WzoPHB91egM1YDMWXd9ltDyEhoOUId7W8gY=;
	h=To:Subject:From:Date:From;
	b=JxZ04vnbQDrNVbx1m2hz55URxIbK/54NNQ4M+PbVR6e4zoeRp3UztL8PvRx3d/uA7
	 hH1OjNWR8s88MzHztBnJa7FGWYuVurDjdB4yGSn52N0DZvyZOWlk4MayjEh8CLhOWw
	 aZb6ZSxch4MOiJdK50du8bcvM4skL1WigBKSGxsTgGtXLmisF4LqzGaS0uh7s0kCOT
	 zAFArpVLavisXrmW+Bt4oPjm+rosoAmf+YgKz4s7cs3OtsAnSCH01S69czf6wyRlgD
	 jnihB2LLCK3Ax1G+1aLXRj+mu4ix0eesjYrqKBVox3uaBxEzjyRLeS+mvrFzcDpCer
	 8taZtwOXuSdZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEEE2C38142
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 20:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167441832577.17731.18309315294321202488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d96e57f5b0e929cf99eb45c210310f27737da898342878b690fd170e6f476869
Date: Sun, 22 Jan 2023 20:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674418325
