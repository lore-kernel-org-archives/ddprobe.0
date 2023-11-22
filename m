Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0464C1DFC0
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryqftJot"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76842C433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700690896;
	bh=AxcHQBqgMEAE8kc0y0wlRy6kc+yK4wYpkdsmOycrYPY=;
	h=To:Subject:From:Date:From;
	b=ryqftJotRHJz4/SM8/tCn1cV7lPRW7xTbOW4l8LpiijvqzV8q/CociZsk4+mdX1A7
	 h7yI+a3B1nZW0MlL6XB4qqITMAYDwypbX8kIidm1qfUHvn1eaouhkjroygpW9xe0hC
	 CRquK8fkjPfNqxvRYbDiuoP6IuEmmzXpkeQayxtMPss3i0bsDJn3qdd/vrf33WIU7f
	 OfPMxv8tMRGvHg60JuXuZfEJzAgqALD3xE6dM+jS9enTYoNwCa9cUMpmIWieHanVRm
	 JNGP4kIVuzTNUuM1hdYrtkH72aCnP0y6fnwbf4Df/KJsyDfDFgFO5dckRhubfNhG1a
	 DnN5CcEo1k3rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D78BC27C40
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170069089637.20509.17548798802299718818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de9f65e8a260299f78de296955da4ed789a85e06910f294cccd1f0ed2feffbe
Date: Wed, 22 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700690896
