Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384CCAD21
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBE4C433D2
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682638925;
	bh=0TIVeo5cjaWekDiPnnbBEyWcP0JiVDIqyw9tS7loYvo=;
	h=To:Subject:From:Date:From;
	b=s7umyNoIe0qEHDOB3Ey6vJ/qj05B2HsG195TJdjlAYc4deIe+oD0+xFpkEoM9S+XF
	 RLEokHGeAh/ivj9RsP8Wg3Hv6C8CXFpwvB20Oubaz4M2BbHp3zsu3l28TdQSi9enEa
	 oiwvG6SmLJI5A/0KFiMpRz0mA/+CARJkfbohcz2Fet4S6d3vVpoRS61Fd4/CpeUyjv
	 54vN+mD+K3AVCC1pDucXiRqMfafomlF2ttHz2QZal4PylJbmL+sq5gHFlFfu8KHtkC
	 lWDYgLY5CJ/ym1QvB+fKEj73GidipVkvjKvxwHWezroxUt3bgHmEUtGlUoUj3VCUoT
	 n9Ggturyp67Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44D7C77B73
	for <ddprobe@lists.linux.dev>; Thu, 27 Apr 2023 23:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168263892575.31471.2657465363516792846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c3369e3cf2ee40ecdcd7cf9b79b277abb201f2c9298e95f851754cfbf7cbf08
Date: Thu, 27 Apr 2023 23:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682638925
