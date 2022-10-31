Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE31617F4
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 801D3C433D7
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667210454;
	bh=RUI5aKmnKwHc60BwJIP425jXCH0Pjfo/54racSlh6w4=;
	h=To:Subject:From:Date:From;
	b=FqBQ+b9JloQUXiMJMwcwRwF6LqXsFpEZrGKxoTgY2RYN29bvmWp43NXl0lDI9nhfb
	 kvV0Yxw3NlWilGLfdh+Jof8RmXiAhL5QMtHDZV6M+JN/Yl3v6Kq0RQR6wOSkj4HjCe
	 RQdsXa9m8AbVCHok30wY4svjh0njxGVzEGeEZQxwGsOpDS2jj0HWeIhHPlaUKOTMC4
	 uWQFB+Agk26sD4fXKbv3je0qqNSfdfwef6GEYgxBx2htzxAnd4VYUtBXxVOgIxC7Gj
	 0vcUGbKGuadYHv6Xr//WZUBD6kcquj2IGJhi2+zTIRXnUS4ckFBJvsKmtt9zokLMeG
	 DOdK62sCQCZ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 640FDC38A02
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166721045440.30300.9202526238206972369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fcddcc5ac2d21ec5dc49513bac9f4427645f780f0ef978dfb20ad267831144d
Date: Mon, 31 Oct 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667210454
