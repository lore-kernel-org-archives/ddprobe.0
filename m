Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BE34E609
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CetlAkJ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A39CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700663896;
	bh=ZZi+9IVl44+JikqwDB4h1Voh3OQbtLV4MahVjDS+7G4=;
	h=To:Subject:From:Date:From;
	b=CetlAkJ31U2ByVBJvXaO18ockE5HZp4IxrGBqXKoRUnv4/0bv+U6dtKdbg1kUXEim
	 iKOKFCyI5ryU3uzBt6V1Q+GSE3mUOe368j/fPfBgQEPPFVRy44Z7X233RJKJLRqbuM
	 ePHvP0sJr7dAEFDWwnqPZsCpWXaSnp3KbJNxPrauGh3p1KpSJoqLomkabxf3Lrao7/
	 arwsL3DxdrsTBtfmdqO19542FOL0CG6VMRGPi3ddk9jSls2uLVZ+4EUcHOb/zyB2bO
	 WZK7RvyHzcORvkqnPGkKcP2/WqJ97f2pL7e39U3vzSHd4DzrDDocmLbhZzpK0b3VRB
	 iT3KbI0zD+Bdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E74FC61D97
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170066389644.12835.6486573405724463877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e6fc2edb3455bcdb6256b2d6282359574fb053797a7b82296ac093810e7b3ad
Date: Wed, 22 Nov 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700663896
