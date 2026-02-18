Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0363730C378
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771433094; cv=none; b=gliPE+zBxhqO7ZtUiMSs5UsnAiXwJnckAgN9KX60j4C0Wzs159/6AtjLOoZrL9iHtpOzLW3XwddXLyPplfD5qznremNFW6eV412e2HxQtHwnrS3RBiwr/WjP42+RdRSSAJG84kM/5FdT4IO/SX84v/mFVFSQRCDgERKyZBUyGAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771433094; c=relaxed/simple;
	bh=ZA8nixVQEOEFRdZVYDTV1bB+I7ZuNJ4vCqiKFl/+VmM=;
	h=To:Subject:From:Message-Id:Date; b=Gq0tDOpTBCzlodmDSOv6qv7ZBTtv+OCGfDJ3lWkvfujkOuJgbjY9nqAAeH+1UhxynAwRZKeIQX1IfpKUI6SWYiJjw1TjV/AmO7wXofe3ep12zL2d5Gm3ZdrGxyNpCWsrjix8wMzbnVPLetuGogad/2gyz/7z5UUaV/81MT/GA0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV0qZLt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV0qZLt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A502DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771433093;
	bh=ZA8nixVQEOEFRdZVYDTV1bB+I7ZuNJ4vCqiKFl/+VmM=;
	h=To:Subject:From:Date:From;
	b=NV0qZLt+hc9XWULCR4EmvrJe3vuoMNM/smTu6pAjEfJAohMW7+afAZPO2dfDstBmv
	 eCr0KY7LzJlvAXbK+20Yr5yJB7Yrq1/CxHiKkKwSQdmLLoH9YzMpb5l3W3SiE6yp+T
	 E5rChK7xiHeDznWP+sg1Y2kgJKbAKBfdJZchqcGs7g8uPlRJpuDLRnmukdzeQjOb2S
	 YdMqOakx9liQJw0pZ3HW3lU0AjQRK3cDm5gOZ1T9pA3undSCEGThFqEVneaYIkHph7
	 bj06nKKDF2EPSoTC0Me6CwGVFG/mQ2798rMY1ffA1QVueQy/s5UKS2PNNPCwVPrGG8
	 MRnQItceTSqrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909C7E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143309358.3226.2297669369619904448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5e70ee62477ae8421f6e60aee9c910fd5ece7e2a20e10a4842c401ffa77a74
Date: Wed, 18 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771433093
