Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3605D15A2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5F9C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674204125;
	bh=ADidoOSwAtMEQusFVUJm+dbQvijhzvTiTfh+hSvgk+E=;
	h=To:Subject:From:Date:From;
	b=PSuzjkQW8Vb3aMZ8MNXm2tR56lxuoIUs5qRiBdQwt+5S/9gGzrRWA4T1zd5/4TG/P
	 HR9QS8N3G8Vm7nryYe/0+evwRB+my87uCq/rSEpMczEv7ftQGVJh8elNlhJFckaoUH
	 plZUcO9kOxGmQkM/rFx1EUcA5R2obajf8YBHCRN/gIVATBSaz/4gn+IJpu2x6V48dV
	 xvYHpD29c1zSbbt/GzPsGe0mj06x5Wnq9YY8aL1c9bkeqlT/3L7i3NvlEgjEfM6Otf
	 FXbcnmqJYMUIwb7h5NyTTOpClZFo+IBVKfaUU9NQPkY7zMTnALp+yOw4m0Qnsw7Dqv
	 YU4ZJLMqGc4Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7DCC25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 08:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167420412576.4529.6065842864905314031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 963695518d870a72524144cbbb220fa967226519a62f103bb720eba40684e517
Date: Fri, 20 Jan 2023 08:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674204125
