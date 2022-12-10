Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB08A813
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9216CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670695887;
	bh=Y+XMLSsVJUD2t7ZoOWnqcWRdQUK1dtSzeUHUKnP89Ig=;
	h=To:Subject:From:Date:From;
	b=GUDn1F2PcgexkCNo4UZyl+6PtEoCIlVFz93yNNsDLy9cGsddFwxzZyxK/W3cgQKOL
	 eboo+p8CZB54RasQd3Vy8bOX6NVp1uvt5OgEs3xotWrZvGEtVRj7IEn6fcRFOHTjy4
	 kNp9Quk1waag4Sr6iVYHh3U8YFhXHfQj71Q19jiD2Ml8JwF1PqYuIzafIaYChIFavq
	 FxdU3636BZrwse6/J5BRtLR3uINN2DAyJQRHegG+LvcvrzZTY6c84hkXru1m8qAEH3
	 M1roioiJU5oLCcosct8HfrU8N83oqmP9Ph55KcIFN20XzMNLMlyHCzXe4khxKDav77
	 pXnSSsSTsNnVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B601C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069588738.20000.2056745970553666774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264886af90f275c96cabd4758bc55517030dee325e68f551a83b4a1e79bb0a4d
Date: Sat, 10 Dec 2022 18:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670695887
