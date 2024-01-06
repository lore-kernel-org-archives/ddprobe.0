Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C83B63A8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JM6zFqJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91B9DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704532096;
	bh=svyO/xSPPFF89Vc8HPleMhnWROO591/fExvGF2VJJJU=;
	h=To:Subject:From:Date:From;
	b=JM6zFqJQvjaS6Yj7U0CSXGEqpTerhpWr8x3eGbpkRZfS8eshXE341fZyxLO4t8ueZ
	 vjFXOKTSEcwa3YZv3wbxPP+3EHGLdKieVe1/WSJuRcQr00WsoQ4FB2Fdlz/jA0eV+5
	 UAQ1azKDadgcfOForZ7SAirfSRiHBP8DWcQCiFuFSQR3dX33qUfy5GIHO63ENlcgRG
	 uWy8Nv4h3C7tG27krxwAxKY6GbXEYb+p8Rcbqg/fpGY381F4OQe3MylazMCALcJQXt
	 LhMS4YE26RAJFJ/zQ/LHc3Sidlhx6ic/8Xwp8simqT83ga1XNMVnHtnKlGj9D4ms3G
	 EJ872MrVzT8yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FD3DC46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170453209639.18510.4098124421235866567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c0238af877a0acaf7a5c8790f7cd9bd1c3b835b5a33413f74539416ed16d41
Date: Sat, 06 Jan 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704532096
