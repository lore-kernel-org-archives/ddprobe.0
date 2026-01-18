Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FFD1AF0AF
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768760634; cv=none; b=kQbVakdgr1yGCTOa56FHIyOxRjjzRJzmSVvbbuZFT//3A0Oxnt9rhw510JGUoisPdLJ5A7s6YnLPHa7ypz9fjn4bvX7r6tQrO+giCQszIdHkJgsXocvnDbtVm5oM37+6sKg8E99FOP+/lf6lTAQ1xnouNqOci4/R/+qSc6Mgv38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768760634; c=relaxed/simple;
	bh=RZqKkcY8G2HNoMYcoKQvGZJcIMtPfwUod9AkgpCw/dM=;
	h=To:Subject:From:Message-Id:Date; b=LL+oWAfgA2MxqNkDloo/OeSuwZmbMfO9/wfoRrd3P1QdnG3v5rpzWEj9hGrUDmDf17r4ZuhQPAZkDzaqzXdFxgqZtJ+9J8W+5Jx/CjWhkOT5LdyKsbUyZbqwtboLLnQ0ok2hePYzbwWO4r9tkwOo3RW46LbBBEj3RBefXXzCHl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Skwaq2ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Skwaq2ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B3C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768760633;
	bh=RZqKkcY8G2HNoMYcoKQvGZJcIMtPfwUod9AkgpCw/dM=;
	h=To:Subject:From:Date:From;
	b=Skwaq2ZY4PIIjFV/hL44iX/0ptdakbP2RW32Uf562dmAal0WbrRehfgZkslE50UL2
	 XxD5RiKzku03HouSvqvtRsKnUxC9KgwevtQHJmWQxB7U0wX0K6CvV7k3IXkE0qI84W
	 NtpXsNe4c3F2EsKADFQUQcG8chPpFWL7lmZ0PpJ5pq2K0shG0lIHZDq9CDxC2zhaPj
	 LvhlWSmk1+w7nqqeJPq6wSfmMuxG+mwz7+RojXjGANcoK6cIwXCKmBnh/7CHI5NzLW
	 ZOYJR+OFYokWRDOtlKYqbZ5mpqnt6DC/P9bJFw9owetXlmL9unXfgPsPMfjzAQX/8T
	 u4GlB8ZyZimXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9549EC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876063357.3779.11533682582737324396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132753cf27c82b357dd68430145b34848f4f604b745428c28e27ff3a5199a4be
Date: Sun, 18 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768760633
