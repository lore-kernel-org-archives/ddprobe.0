Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4EB53232
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67AEBC433D7
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662999653;
	bh=wcPXh7fO1AvM4IA4H+mKtST+r1q3xv92yeh6WBE5QBs=;
	h=To:Subject:From:Date:From;
	b=aRNqdSqsddN/5unhQuYzM0yx5H17xQiAg6W1j1ESA/KL7CBra61wWKW0hdMldwae3
	 ky2KmCuv8JbnSYD/GMhOyCF15Z5zPXWbeTJHESFZKRtOq91obn/ILrAkSfFFPhvIaM
	 FVhNIbd1CAvFEJSp3V1JyLeKh6HuQnv0pe9opbk2zyuKzurSS2x9VHCQ0ju3Oa9Nt9
	 DG3AA8GkvvpbnpKOr4D46Wqe1KPp1JpUNrGRI804+HWdvPmFtMJ7bge0QzBQpD9zsB
	 5SLBtyoVbir6F+CGNFGISRrd/M1af43yIrsN8zv3nxxC94BqHQCRYHhuxLAQCtFChe
	 PSlGFSWqAnIww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50357ECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166299965332.24695.7947030179274055867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e098ab90446ac0b13869ee340625921eca0a01997a32ab2e5fb1fcab65fd14c
Date: Mon, 12 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662999653
