Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B1B8466
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82FFBC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672760487;
	bh=DZ+jTCsjLAmeofIevmYZ87m2MGsMm+m1wV4W0kZ919M=;
	h=To:Subject:From:Date:From;
	b=mDvHqTjKPC1YTEiAo/ySGoX6T3of6cKyoWW3sEnlQOihWS0HXX7YFC0AYWIkfYLXR
	 YsAMyX6EeY3dVDXGMTRppCAgRSwIjNO0N7To9IiW6XIX9l/hODeh1rV8QCWa72cZah
	 WcFPiJY1aJCj2xV6V4heImrIdQvtXfIQVZSdIwC7oV5zGoWZkkBf0mgdznzkEVRu4B
	 GGY6+NqKIDPZHPEj/ja3jUznClEmAVJhHkIg8Kegr9No0OvhKcskZGnFMqOd3FHu3o
	 CpwIaCwSX8x4OCJ4s9B5gSBSXqUaJQYhTM+28bnlj/iPjMX/Tr/ZWdXeygtnPz5ae2
	 UCPWl8JGhbQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 666B4C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167276048741.11310.14097878905348545704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e29fe0be48353a17cdbdba6faf8609b4f1308f8d24f066a9ee64ebfb61161b97
Date: Tue, 03 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672760487
