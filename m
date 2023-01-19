Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DACC43D6E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C4D7C433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674162687;
	bh=q/+5unFJAyN8Q0cqvBRSLxMcRqcvLiTVdmVHNusjz8A=;
	h=To:Subject:From:Date:From;
	b=dENrb3DyrVrnAjd5Mw7SLgchLsvmwnJ5sw+D1EDFaKDs0S/GoJ5z5Qe5fs2yiUOMc
	 X4sIBoBVUfoYBKRqwEEA7fFQimsc4rbBS59+qAhZWiaEs9niblbXFuQVqghFqPRsVD
	 K9tFW39yNXeTmHSU5sHAiPjKoUtzEB+/pFoC75zIadOYG4/fc7dK5wyNCo1rgsWwZV
	 dz5zIqcr+CUKWZmuWqgR3V02u+v57J4S9RKGJPkyzshQrglTDRdlgeAzxGl3yJXQT0
	 covRCTSJ6ckUFz3pNGxm1BMR9+NRU5DaWYrRvC15039XKsXYGUyf/4V/3HEavzjXQn
	 baRexHFiSSACA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6151AC004D4
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167416268739.9253.1590688919460546210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e197bfa3b71116d04118027d441c5c50548d71b517cd79c16c3a1b102397e09
Date: Thu, 19 Jan 2023 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674162687
