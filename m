Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BDE224C6
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwoAPKCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F96CC433C7
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701730696;
	bh=AWr3z3haipkNGRyniZ/9uKBChXc3n6OmmyHjSaaw1dg=;
	h=To:Subject:From:Date:From;
	b=HwoAPKCodYv+bzWptQi9Kp49/F2iBvZF5uQ45xMuR0vxMsRgwtwF+ZkIoQRfeM4SK
	 SarMHHe0RpfRjOsLWnR9xwVgwwCZKAXKDZL33SQ50ZXaHb3qql/WfdwF2jqMmSi9eG
	 13JrRwZIb/aK73dFZW6FzcSP41rIIY4slI60Rby/DlpKVS+CTMYtdcj0e9ZNdfjQaU
	 FptzJH+8DA6zI0PixLucB24k3ZISMBWcuRXd91qdtp+FT+NNnacQYSo24/QwJfqNBJ
	 Ofupv47WVtiVi1c4RzeYRP/WC4EHogtmOz0W9tV0MEU/Vd67+sbclkCyfOO06Sq/Uo
	 LQmuT+7QybwNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65044C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170173069637.29703.9856431606803128001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7749a65129968b0e18c8d369c0d602bef42e3d5b22f3604f0070929c67313cc
Date: Mon, 04 Dec 2023 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701730696
