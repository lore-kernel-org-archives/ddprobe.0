Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CA920EB
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EEC3C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664082653;
	bh=O+iPkCudYym0wlboqN9O1VLv24M3i06+CKcLPZDsFdE=;
	h=To:Subject:From:Date:From;
	b=NkJObMON6t4l+NRgLMwJXMsHu2PiIYfuJjS6ighg8fY+FdWpZBsf9mjBX3QvfGmy0
	 DnCBFSqZ4AE/IvttNPM0TNE33Pc4OS3HuCv9jrFol4f3Q/cw4fS1YcITQfXPZ89aQe
	 jmW/TL6so464Vmd05aO0fbO4Us/wM/iM0S4I2aEBkfjz3ggHO8mlTAc27KSCN0WY2t
	 2bE8OUIbCoFpkAyRsOVT4W4cY4PGidSBW1Ylh2GBrfbjAep/lj/vHLSUXwgOz2HwrF
	 s2+cWbAuLBolAZvh5Glhbx5ALJJ7xESkDPblHz2Xt0uul9zqZqVu9lfbryKfPH0TDL
	 lCMb/R9S7tiyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 548C8C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166408265333.32521.13881189291509744439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34631416815dbe9ad31d11f2f99f06841b0a7b5f0cf98d651a27cfbf060fb14d
Date: Sun, 25 Sep 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664082653
