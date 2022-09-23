Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1ECA3C3D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AE32C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663972253;
	bh=lHcwVDPHH8nvQmZwL0WUXYpl+Cn2t9w+HOGjK5O+atA=;
	h=To:Subject:From:Date:From;
	b=lDs+2dP/KCwZ7WMaz5exK0dRv2KIZ1US5zmNqIjULCBIWSDepjA59YZQzTejm9LsZ
	 UsR8XgQNgOc3DmYrHCcN6c9n8KCNaAW+xowY97XIzUeYGDA20HaEOVmwIJ1sIbCkR+
	 0it6E+FjyjDB9uYTIswIiKf98G7Uc5o8OBiIpYULJJHJ/qXSogXcG5uw+7ZCCc0uTq
	 VinJwst0Y65PYbojziSUXJFHV6QNoLukhRIHaOAa2ozLSoer+qtrgAGyvwFg6/V1JK
	 EkCBKfcJiO99mYC5ws0Cnco2c5M3G/Ukw+USS8ZWVlFua9Ujugvs4WpEwx1524oPyQ
	 RpBJtJfi+0R8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50656C07E9D
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166397225332.21220.5737747045162640997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b50dcb25298b647c96777785f97313873dfb714ba7a8fe3b72945b9e8eb041f
Date: Fri, 23 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663972253
