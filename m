Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBD87FD
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et3b5CyD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89A6AC433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699316896;
	bh=vEeXd28kP0hnkebo62laa3eH6thw8a3YYm5fSshQtes=;
	h=To:Subject:From:Date:From;
	b=Et3b5CyDfeR8pQKABKaOn3Ksa0O0iHCFwvROC1FdGKrxVjd/l7pXOX430djwCDS5F
	 CYYDipIhC2LLTice+V8pshUnaZc76C07qrKMR9cfx8VNeH1ZT/KoK0y0HWKOJPUKYX
	 Xji/x2WT+M+yLbpwn9hzXv/71KKaDpkpi05FW/mvoOmYKpufoW4iTdchwaXB8oKBI2
	 A3xPdXp5c7YnmCaB7r1A/b5roB3OAyM6IT7XBciecj4S1BFSLjC348Z+NwwSGdmC8G
	 hdKB5zQil+o41vyNwVmDEXsahRgmloXHP49l/wANI8u83BtUuCnOfvODQ0CAI/tPTW
	 YTHM+BjRR+e8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F7D4C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169931689642.25628.570393928874362568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25152e621c78d248755a1003721d9c1d522a69973f8240b9607e6965308f18bb
Date: Tue, 07 Nov 2023 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699316896
