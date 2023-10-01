Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631A4659
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 16:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1BCC433C7
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 16:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696178168;
	bh=hklVAguHkuf+KuP84zilJ7dh+a1aMRmP34mNivbvgF8=;
	h=To:Subject:From:Date:From;
	b=tH06jDe7xWxF0/AsHkO70CVJYrQmyHekJWi2jrFgKses+eYEe3iHDRKbRsvJCcMXm
	 03LwdXg8UaZxzQyoqe1+F/bTFXAsqlQCkSUZWYCeG9Wg6Lb8RX89/4yFwiSko1G812
	 baJtDjVHzlBzzBbJ1lAAmfCKFd8nismaunC0MJNnib92txUbYbchVZqOhQEUw/yv0z
	 BFA0ykujsN6EqqWyl/xHjbe/aeCb8iw110fgjYbgl01+C7t/gxM9FhUgfdnlxGr+QY
	 gO56h/+sRQBYGbzKWnAZqfVG2eP5acvlhehxHRUz8TiZ0dGl5wLQeKrEkEwH0eyjTS
	 W8MZok+XsP4fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57A9E748EE
	for <ddprobe@lists.linux.dev>; Sun,  1 Oct 2023 16:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169617816866.28496.16079101789437780223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def72de09597bc2150fa98e6c4115572bc84bd19746ec00caac46498d69cc51a
Date: Sun, 01 Oct 2023 16:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696178168
