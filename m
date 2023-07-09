Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8328817E1
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F172BC433C7
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688891229;
	bh=ZOU9Sub7wbFfsc9ZnD2HLcG5klFXmi0sqUhu+3ZFYMI=;
	h=To:Subject:From:Date:From;
	b=G0cSC/kxUD0V/c9ze4Lt2j4ggfY/tdHbk+N4EG9gk5pT/2uFnYP5I1MJrz5vOyk+/
	 SE6Bou5k0UnWhxP7WKbydf25erc2S+wKy0nQ5Jpn6t7w3oLXfw0c3mwnuHE4FmgM2r
	 4ky8UUNfDozaeqtzf0AroWiOHvPz5kw23nTSftM8nTDVzlr+gs9Rdlv1w0Se7vXNI8
	 wphVdb19P9wQ0yU4kqpBivfYLG4wP+uA4xRTLICkwteOW5fuVOBQRWHirQPs46Yd/8
	 CyiRpLqTg72VTr1LOkxQGkDq/749/1YDsHe/PsVrQqCZBWGyLxcK8ZcC803qt5JvnL
	 H2D6WX007129g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE435EB64DC
	for <ddprobe@lists.linux.dev>; Sun,  9 Jul 2023 08:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168889122878.22973.12726310225129106770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 677a88095ed7969284829ad571ab5b06b9ccc3047ec1ef04ab27bd3b6c5127c8
Date: Sun, 09 Jul 2023 08:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688891228
