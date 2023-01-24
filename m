Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7798F4B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3C7C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674585785;
	bh=2R4NAvjP+Bl2sbSbWkH29Uqu2TxtNNwVWlpMZz2psqE=;
	h=To:Subject:From:Date:From;
	b=aQGwvGeP8yV1TmDDYOnsaeHFrekZ+AkVZIIaUWzlkuSJFq4ksOnrLcQZ1yg85cVqO
	 +810VKcRHFDzJNNwGyFj6PkfJx58DyejPc9R7kKtFttQXTz6GrkPqNthjeykIgRyCM
	 AqiBKsw3m+RmOAxPaVRB7hJMALYnNkVx+c97L0+g37mzEi78ZoiOBvO/Q2Y/LS2uTO
	 rCSeNL01Z8rt44c3WiLL2Xr3GHdgC2893DeRqExX63sMHM0yloszl2K+jc5bu0tkud
	 Lw6T6hdR3aN3gxye/XlafHgdqNC43u7P69cGO2t+9AI6m9be5r9U2HUoKm0miiWvUw
	 S62c7wdNVwKaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B592EC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 18:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167458578573.12731.3298846639851689900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445e68d0565ec560390b79226f095fc7f4be64295cf55bbbe06cd39e31732b00
Date: Tue, 24 Jan 2023 18:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674585785
