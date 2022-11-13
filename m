Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F07CDED1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D706C433D6
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668319254;
	bh=8NTaKcjzQB5e55F0O3CYjGonRe2ExUYiw/F4Ah95nDU=;
	h=To:Subject:From:Date:From;
	b=es2SoSTH0G0NtnGE/v1dC2V3dRmN6LwQwVCiW/bpii2KSydFjoumN4V9KTydpVKz6
	 6B8T3GyC0qiKDKCtCsbwINvm0+3aY5eO7UmfzDaF07tCuCJALTrI6t24kvT4u31QrT
	 mRD6t4Y0TlBiSyPEZNeVbO28LnvOlIncaO+bWTCxTEeZZ3g1IEdaa53TcpI/lSTDta
	 jPh6bxr/nr2kx5r+RWUdcx2L1BA5v0+Ca1y0KpnoySNNev0YwzkMfVpE9WaZ2KzBJ6
	 XEFdUyp45JO7npABggilcPyVA6/RhIJoYDNe5HPQdMSXhLyigzpNmMakPaua+K+Cit
	 /scgg/+urEtIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606F5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166831925434.32698.13325863720530235050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c46e48db6a9f8878d31dd953bb603a07721e43caf6e1d1c503eb2ec54ff1fab
Date: Sun, 13 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668319254
