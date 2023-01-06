Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D777B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720D0C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672972887;
	bh=YU0rOH8wGGaz822MnH2jRSGUMMgPpAjLHyTsjggzAUk=;
	h=To:Subject:From:Date:From;
	b=U8QdX535DtQjs13U3uZnhhbI4QkT4TbYsIhUOdju5qfDXFHnGUiBK5kXnT4133PhP
	 voaPvb3AX4VhBG9nvPkgKv/uq/70zrF6Ulq6MhZ+ML0z+MLHzK6hHdZc1khjk5wprE
	 yf423PZdl4QyOLSSYlVgs+JlVAe7G3ovALKzuhMHn+wl9eW+Lj+xAQG5oXPKM81n6q
	 3ukMa9wASgk25zhkELEe430cLo1jwwlAuomc1LOSpN+Ow7sVCB32r0/Ty+eCglDypt
	 PDei/WWiaOqus3lzEzeN5WEnvYmDePRcAzY+820/PL1KXlTTrFxKYO40t9xzVSBdcV
	 Il2l8nfgBTpIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AEBC4708E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297288739.11028.12596032037410450645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac54f4478cd33c077f0d047ea679293636811845b8088b81c1494f653e9f4b99
Date: Fri, 06 Jan 2023 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672972887
