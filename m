Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8D647F48
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MemkhsMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98DBDC433C8
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703708296;
	bh=pG4ImkCAjuSx+uPRKOTy/gFnOtuQbJucy5+yov9DZuM=;
	h=To:Subject:From:Date:From;
	b=MemkhsMxpuPZhmuhdAGDDBja3gwIaB+uxKFD6dbY7ZbTSlGLV7J5ALqH8MLVUyVNi
	 +UR9OrxIJyMaCBtnxRSrQT42RPwtkMlK0pRpfcihFYDT9WIS+ArCFuYiokX8a7wwBu
	 D4pzYwE6Ei4g7HQjdrKk5y/pkmw/ZDlvVxTXIwABSsh2FyztcrLyqZdIHAFgl9bHAF
	 Twl+1XRs2dbLHzyJu1WtBRZXnvKAkYYzc28OhSgzeYeJ6bDMTc1+5IyCgku9qX9X7h
	 iHAIn/xQxHt+pPSwl2PKuGAUgO/RcsHMD3Dwt51mpQhoy9hJVu4EHwvqKfuU7ppByb
	 QJxJAZq9TV0Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7AFD4C46CD4
	for <ddprobe@lists.linux.dev>; Wed, 27 Dec 2023 20:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170370829649.12905.9008983444671056455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ecfa9a75b2279bdb4dba958e179f9bc715333f9a2f7f1a3ce1ad6335004572c
Date: Wed, 27 Dec 2023 20:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703708296
