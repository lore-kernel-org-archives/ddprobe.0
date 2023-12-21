Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8598225D6
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5mIEfdf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B21C433C9
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703152096;
	bh=9moQJ9iH9Xpyv28aJRkk7vgC7NNfSbHGniGnsGX+0+E=;
	h=To:Subject:From:Date:From;
	b=J5mIEfdfCpErAZC0x3hiHrCiQLx0wwaZgPbQX94BVv+1UV58hhDK5bMEv7ZjxrVV7
	 ah+p3VQFS0L88xW/UE2r01Jp5MNnoM/dj8wxFY0ALNJG3zViuDA1IGdk2cSjZsjhL/
	 zNdCwjknyDuA5vfT3+Q1SyXum4BTAlFcUKYzDYy22K2puy2/X/94zBoRUqjzMwYUYF
	 F0+StFS+WtEsaNpDXEUTuLP2Z0+BEIoCno9istDr3RdZQ2yaPSTpU5zKQhjN83fsVf
	 CCSvc0hqfi4JaElxsdNB065Z/44Q1tdlKOcPTTFUDoynugrcm7rVUMfGUIlno7UUX9
	 VZY4dKhgIrs8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEBAC35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170315209636.3739.11555061007115131796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 667bd2be5d57d575cd3c0314076a0aa5ab5e2ab5bc97ee1192a37b08b79d218a
Date: Thu, 21 Dec 2023 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703152096
