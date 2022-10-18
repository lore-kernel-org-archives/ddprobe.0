Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0844A24
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D45DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666092053;
	bh=NVanK5t7EnWxkltdnNL8B1JbAybfpWs0q0ROAaHTQ5E=;
	h=To:Subject:From:Date:From;
	b=ligxvVdwHqAUo+jCDi4+R+w+0xjzThCFjrnxPgKQtGhzgTWxrMMZalYnzPThP4ceX
	 oHUkZfCCrvNZv0wk7aR1VB7tcWZ5ILrghAF858uwpfWLWDTU5uOQkxyEUqrwnqPDqL
	 dVrMttSVFgW77nc/ZVcfbob87VQgPkXyGubw00STR6eqaA+V6bwYr/SyHDmCTSRo51
	 iOCsTxodJUr0xs+8LRAWHg3Pv34Fg6fm7K9XWwYagXh3V8XBG9PXiFPEMQj7FCM9vr
	 J07WKYJeZNOvBoGRsgiHEb5GdVLVetgNV6t+b8qPmru2ASVSxLsmUWk/ELaaXmRoX1
	 K//7f4IapQ22A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F98FC433FE
	for <ddprobe@lists.linux.dev>; Tue, 18 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166609205331.10367.7242474265285835289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfe1e991a141184f699050b70e2f33c8f48c426d92387c718a9826d9bf654109
Date: Tue, 18 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666092053
