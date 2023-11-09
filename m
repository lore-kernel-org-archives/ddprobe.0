Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7D215C2
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CG/iL9MX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 880A7C433C7
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699548496;
	bh=j0kRbDKXlJUJlXpaPnak3tGT7tibeZtrsL0SWeDZ2H8=;
	h=To:Subject:From:Date:From;
	b=CG/iL9MXS3mmS0tNNt3VbTLUyfmKb64DLm0UgTvqEU0nwE5e7g62GzTqNHHP5DUNJ
	 YgKHKS2c2LynBSO/MIh9N5UMgzFApLX1dypDcluQIYFSPi1vKoB6+kqoE75uFEGiEW
	 kvOd4e+hE47iGogWL555WfLatC6L/pJIvol1UMlisrswxFKzm7KUO7uhG46xJ4Ue4Q
	 6E1zJbou1CiIY0P8Sk6Cw7VNgu1ZCaITt50LN90uNfzgkVkxQdEesZ6goMH+NBCuly
	 lbJh+GXUS/PTIuvavhqgMDGUTAVMd9gszEuZYpYVcn7CNxEjJ6UGHNAcS0Y/3B0rI1
	 UQ0IJut9tT5Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F890C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169954849644.24268.10519381296379891057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a843116648d79250ef71af640023fe99f61abd9901d9cdfd4979a8ac2243d962
Date: Thu, 09 Nov 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699548496
