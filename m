Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD2E66E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 754DEC433D7
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663097453;
	bh=uIzKAEhLiVu0jCbSEy1CiABbGVt8cTNBU6CBcAo0BRs=;
	h=To:Subject:From:Date:From;
	b=lKm+nCo2TcyM8ZTLu8cPgGpCw0sPriIzsAMBFqHxxAVIx8IVtpun5jAJ9M5Epa0Fe
	 YXDEjDX8tNVLyvaqesemQpl9LSGwGPsicGX05YsUbGPhhOLHaoU+ax+vWY0QiL1QyB
	 EVPLli+DfxGofUxOMXWr3C92I8AsdgUoPMyUc3dW/W7zQjbjkDgppysSde27oUOUQE
	 ckW/BuEXGxPR2E3YSDeyhmx6TNPnHve/TsMenidc4bglAqu22eD3Vf3OK2t1i88uht
	 smhOxSVfP+fBOAR0fz5rH13wrAF5epXVEXNxO3ZYDlEgaWPrWtqKi19jWjyhg69rLY
	 /7Bl1wsh6iRiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B3D2C6FA8D
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 19:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166309745336.30124.8205940616657805693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b921509033c63009ce7d7c06923c9babbf0fb308c58966dca50e40c0b96d54
Date: Tue, 13 Sep 2022 19:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663097453
