Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76D779C9
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A110C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670958687;
	bh=rujm6kOYBtV2oYfHb8X12dGVUf6zjN0zegEQq4uADLM=;
	h=To:Subject:From:Date:From;
	b=fV6aElQ0/V5Q6oZnlQNCIDu8JD4YqiqJbnNMIgIqGWyoWpP1zdrNM+pokFykzAtqR
	 OsMPJzflQnuFXQgEQwiATUCsi94suwsbG5cY4C+uvsHYEBpNuOInQpWsj3GmA5XDt5
	 PnBNIvuEOa7lC2TF3kjIorNjtQgahEEA8u88phdW/bKWupEi5blUhUw4H/Gu74dDrE
	 BlG5pzj4yZwY5drrLvnLtoA0IhpFnkVp00fA0nxI0xgWQJAlmvXSAsTDsEXJ+NJQ3a
	 e0EpuvJSVr0BmBpGjmOPQW9LHDH3moLXnHWBpuSiy7pHS9+H8QdtxrBx9OMYBrdxXd
	 ubkOXt2GYLE+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F98C4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167095868744.14072.4046113196518051571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a56ecda701d990697593c5285ff513525384c62e92898799c12e247d7de96a
Date: Tue, 13 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670958687
