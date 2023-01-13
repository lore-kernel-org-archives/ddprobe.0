Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E030E7EC
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D999C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673602287;
	bh=bmTDkEybmOgKTecmAxHCWSIQ13IErw8GM58ru06BRy4=;
	h=To:Subject:From:Date:From;
	b=nYKmpJKhh1x5SMmX56/V8QMwjxM5vOTSBWWlGufejL7/rvxdhMngCrDgWn+5L0x23
	 vT+OXNRhTFkrRKJJBdATDXxdBoftkIRwrS3t2Wr8Q7d9c/ogu78jglsteQsbHM0plo
	 sZBdO+ZD0d9uGVvaKDzlROO0OEUWJ9M5BvguL4DMZpHQBXjBNQI/EV92pwp9DyL42T
	 uvMJlNBImzOke5Y+45A8DlX0IPFzo/yljMvyUGiWbGjhSpzx2kF2Vdh8iIU/DBYHVW
	 PAlLxU0qVpRgCw8wxs3ZFwvyvExu0k/O0WIJrrgI0ad07K5xLbMKeEDxU+n+8EAkK7
	 cj12eMz2O0FWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EDE2C54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 09:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167360228744.24120.12736272570228757977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011b05eecddf5ad3444555b8ccb90e184c96e09fddb497ca58c4ab6b44c6473d
Date: Fri, 13 Jan 2023 09:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673602287
