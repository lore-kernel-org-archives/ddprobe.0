Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD2B244671
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754392794; cv=none; b=Q2BU5kGUATvrupk0A/OXSF2ZyobMSmk8qL/p4OwRR22tcjZ7qBQh1BBcP6B/URh3AqvDB2irADuMa27RICLWyYVBCyW6vsfzfuwbviccGmVOBhSXB7dtIKs/HsNwigl5KN2Cf34Mk4fBmCb2bh6CK9H1UGHSz/OawX8LGTt3dME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754392794; c=relaxed/simple;
	bh=F4LYKtnhgCJbaiidW2W+uDo0ZKRuaYXcrPMuStZFOj0=;
	h=To:Subject:From:Message-Id:Date; b=P5XWVadEgQ2y1xqG+vZDEGxf8sq0wSyH3AymR/72rqelIXS90ab2oJsSTCBrxrcd2/zRECPcdC4JMeR+ueRMrX6Zk+gZiz4gz7OBLxLkuZqWuN1sfJLQ0/GVPbEeIqfIQCkMqQ7cCkrKplenpY3WbBfRxyrp/DIgM1KKF5rks0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsEV/qMy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsEV/qMy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E02EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754392793;
	bh=F4LYKtnhgCJbaiidW2W+uDo0ZKRuaYXcrPMuStZFOj0=;
	h=To:Subject:From:Date:From;
	b=lsEV/qMyN+nvGK54H1S3gbm6IdKbX57sIxKwoD1vsU6DeTHUhI7d0NYn5+roVHjMC
	 Bk5/IZlNM4lK7K8X9Ak3dC5qOo3L/4SnNVuEre1591pcNZ+xlp2hYe0E/eyi24dlzy
	 Ak2XLFZ8FDneyHU81HxQaH/PamFC+848Y1fztKV9+aSzY6rKuDmf4pXYmdvwNgYxy+
	 yMQONMbepHVWAOep70hESfjvPdr/k/VOl1vEfJoCyuhp/y6DpCcKAEGSKfol+CLmqM
	 QZG+sDAj6/SXrxp1GRvLTX9BjSNeo3BaVyTknpLzLddmGWgiVnvnvlNmrXREHQ237G
	 yHGmMWoCsKHKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F90C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439279357.17529.2739115535854885325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67513dbcb3f2ef18e1414769e17763ad9d05d727709c6948900061bacfce39c7
Date: Tue, 05 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754392793
