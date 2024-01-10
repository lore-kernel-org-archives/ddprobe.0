Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130A54E1DC
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIr2FnQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DD6BC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704918496;
	bh=xTSPXndREYpqMrlNK+mNxjM/VzNOsZVHW5W2wLAj7jw=;
	h=To:Subject:From:Date:From;
	b=SIr2FnQGqwjabbr++RB8Rg4ZSNTYgk6SUr0MHmagNhMM60ZM/hphoGO1bMphyheqb
	 btAcLB+Bm41XJyRS7VpgnqrcVyym7Qi4tn3EDordPrGZ0hZcOKvufDvqXpPO+K85P7
	 irP1k1Va0EwgDafPlk+0zsnpNJuOUHOsB6HBJ13CfYh+GSuc/oa2999KT009Lc1NW+
	 Oc3Ao+mC4DR09F8qhOKcrO6DqiSavrRA0VokFVDFfPu9TyTQnW3bMxWvv+W/f3/7Dm
	 F72rstMzYECfVydKKIWE3dVk0RijvGPTJi26wRi+ZF5xtPomJ8hiq4/7EcMnrBcBG7
	 6hsR5wjyOsY3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A05C4707B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170491849640.15091.3733603378128199328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac85704ea493b2830f1925e5fc1046d2fa689b176de1df8ae0c18bc0851186ad
Date: Wed, 10 Jan 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704918496
