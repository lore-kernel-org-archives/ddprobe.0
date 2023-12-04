Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC80E558
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyBSG2Ag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD44C433CA
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701679096;
	bh=lbsCZI3zYllu7rbceTE7d2xFUZMCZ20FnubwKoGPMO0=;
	h=To:Subject:From:Date:From;
	b=KyBSG2AgifcxEssX3K3jCMhvz4Kg0pwkjQ61sxW1/xU7caqNtMjXVvAlD0GL7iXGX
	 w+MYfomi+9qcDrxhm/9cXjF8H0mSTFo0/M0NCNKjIlOyaKyhTzo2sazdwelaAkuiYa
	 Y7bZGRqMQ0FSzTH59RwHnZnaz8p2g6WYAiN3wRf+5nbNmsaa/elk9rOumlm8fZJNd9
	 iF76bwI8BGF2reWus97aqmnhNtj1zT+SgLlQ8vMVwPwou+1vTkJcT+G24jZ8jUtsDk
	 /v+dyBUvFfSbTZ8DMJC08iKHoMlRxLZaRC09KygUy57x2Gf9G84qn/YiW3whVV6Aic
	 jUfmJqvHttYoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65A8FC4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170167909640.10375.3599921385818328322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f05f6a9a6726799586f02c1622a12c6d0a6f9d5772676d97a0b4341b00262b2
Date: Mon, 04 Dec 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701679096
