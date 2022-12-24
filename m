Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D159E3D61
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79EA3C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671907887;
	bh=XWOBNg3h16C/wHxs1owespB6mrThicwqGrTQdgFM3AA=;
	h=To:Subject:From:Date:From;
	b=qk1neJkbtl4EEvkgwtR/ER6UlmWEGlOfmoNekixW8FuhS77/5PBC9RGRRg4XoqldB
	 4aw9O8/ll14YxJE1Ongc2VCZe7b6j6h6Li9rVc66s5+IElDXJasJy3dIkUt9DcqE5n
	 PqrH/hooTV8WobjNXus4j7HZgF3OKYqgf45sJ3oT8GQT1RCUJf0lo3J/9S8Z0kBJ/B
	 KdpNNJZ81Wq7c7kLiBmtI6oE2AymXTUg9bIZErpcNHf5VUIG4gppV1kfc8ArPh7Ciq
	 Xy3UTMyugabhiunRix/U7mqtK+g/qMLM8e1UZpggqnSw4vWPB01lI8Ok/t12BHgS4/
	 ciu6X5e/v26Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60434C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167190788738.23220.350871259710754832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72024d78560aed968ed97f1db8545292ed673f821ae035f0cba62550db1a91d5
Date: Sat, 24 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671907887
