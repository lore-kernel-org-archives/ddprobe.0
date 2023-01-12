Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDBF0137A
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2FEC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673512887;
	bh=q9aZMHMx2DedqgqOHDkp5H5Aj1+gaBnmyGahIA2JePY=;
	h=To:Subject:From:Date:From;
	b=OZYspwsjoy/1LwtnVfuhYl0bgbJxm7jdSUiEtW8fYnpIb/U6TEidkCPoIcgtqYwdu
	 LunUWNQh71ST9E3AW79Kfb3/pK9w/X6nOMjCmfPqigz2w9xLbquRNWZnDFbfqY8aMl
	 FiRaXAJ96j72KfqPgg0Lu/dmiqZX6LsHjACiw+St4ox9NR5GwEAFysHmfcX1DbOZIE
	 y/p35K3QFdSGkGio/NuvGdmMHTXBwb9JRb4mvYnfVT4gpoQlP4MqR1cCaCRxA5j1ej
	 co3bTBAX07kmpyr0dxXZdTyqhhYFXWPORqj/WWCvnVP731kP57W7VQNZcUVhWFZOiT
	 Wnl1C/WmlymPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6983BC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351288742.12190.5394803212057713238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad3049339e9ee3f54463f13678082aefbf7a65a6b1316040a51e5fc38a316663
Date: Thu, 12 Jan 2023 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673512887
