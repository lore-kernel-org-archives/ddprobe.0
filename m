Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E516FBB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 11:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89309C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 11:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673349087;
	bh=iY5uSrumZdvJxnkmRJCNflJOlUNsNLVUEEfPutHt67s=;
	h=To:Subject:From:Date:From;
	b=Q33al2koYo4l7Cst8xQ/QIRhquPE3DCRhcAlKa/DBc+QEtYi1mQ2y60eb29gww7xd
	 unFF5MD9RlZF3EFICvfTmpFsAe8UXYVQdaYSX6PmInXQp+tKHmFQdSZEITGDIxjZKE
	 7D2sDU7s2IXINt8mph2VCaM3M3z2gCvj011h6jxBtOJQq3z1wzyp/pMX2rPUoVPbA9
	 l4wj9fujYav0Wj80IvTyiqpsoATVX4uWAdQx5smLEtAWlxt4AOeRwkUGlrqLg6Xf6U
	 MB4fyIETq334x9GYkfGmtVmvacU4wodYk+6wwjGHXtkWKvg+AcRvHe80fLdSU1nVDO
	 KfzcRnAfB1OUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 688B0C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 11:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167334908742.21638.2182226044235649041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea9200783ac139e84d80fd1ea9dc0f07d195f326c2d40c3f4ec8dc9986c8a19
Date: Tue, 10 Jan 2023 11:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673349087
