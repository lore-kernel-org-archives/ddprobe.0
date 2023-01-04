Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9A6AD3A
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 879D0C4339B
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672844487;
	bh=wc8AUUuV0csJC6+AIu4dFsDBwvun1VNy5Eyt98+f2JI=;
	h=To:Subject:From:Date:From;
	b=Tf6k7mmGjdKQJGRdHq/HnG5GsKxQ12kTPbrGIoG6jLYt7+tnp8mBMMiMLsoNuQzqW
	 BMQb4KiFxDBRIdYZHB4pcbSW5LMminvo3wselG1Dkap/JWVGEtCMxNgdEsRfZXbVyd
	 D3cQ392SlnVdzlW5BUteNpuAVzLK88b178KlbueM+fhgFBkQnYGu4hawWXFX6tajW7
	 sQH3989hbF6/IkAvT1wbAj1sNRtW+gaM1g9tGLJ67n9n9VMXIA4+gdCE4GBsdzAHvd
	 mOPVpLT99Hu8svBV/oitUcP3dsTzeDq2BrFSmiANlEsNDbogtv1zTFWrhGesDP1UDo
	 nIRdsoM0Cajag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4DEC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167284448742.1125.17722274797091201361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5be9015354b057a96d1213ac1f6a61928f4d301b52c433f4ab9058baf7b43074
Date: Wed, 04 Jan 2023 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672844487
