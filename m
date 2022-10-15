Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B5F620
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F48CC433D7
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665799853;
	bh=cPsoL7TGHW4HUESlyxhwUllcGZddR5ykWRrlCeYVIIY=;
	h=To:Subject:From:Date:From;
	b=Ae5ca1yM+Nlxgq5QgMEYnXS3JWPTlKU30UzPiwO9pA2byqWE1rUjzkQz/OsPcaFQR
	 kjXm1LU5dNVFWlK8VE3lj0z0LAzJX0Na3pH+TwlpJ9b2ko9XT6Lg/8uC4XyhdIdeZG
	 Fz5LteVqi3smd/bRZ37PyByF7VSYireU+bcjD3d8N6uYS8ioQQC/B5SH1RRDWi4k8l
	 k/t7CpkO1vVFgP5z6vn2dPWIYmChbxkprN1MfQRL5LLpz1WStqj62H3/szox7Sx1ID
	 17uadTUIDipYlAc253sOiGhGPh3GWbgEEF48djHLGdVzTqkQvADJ1dqnTNoPRUdLjo
	 B8g0+F/54I6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6579FC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579985337.3175.13196819898984080580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71dcb3040683225fe456bc7321dbcc6f1767f65b0c1c2e0ac971e086933eb888
Date: Sat, 15 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665799853
