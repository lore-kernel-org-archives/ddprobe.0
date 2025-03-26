Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315031A5BAE
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742978994; cv=none; b=KQrXs6c+8OBnOhnuKdG/FLWwXJ9wceYPiGYje717wIt1RDna8mKIOXfHmsc1TI0YO+rxnvf5Dh1gGZE7cVieyaVILKCnIegQIKj6Gj6aASdXxdYjS3k0VVXCMT4XezTIsyeHRpNnPdTVGJj9CQk8/NeJNFig87ewnCYzSAAV9Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742978994; c=relaxed/simple;
	bh=oFEuIbmDUHR4HXzNT+GOgynO4iC1VUfAGSt4N3uKMJw=;
	h=To:Subject:From:Message-Id:Date; b=TV4h0GE6vFjGGGSJKvzFYzaMYOuPp8O48yVVJua03CXQQSO5Iytzxpu5avUESnYLwyEPPdJXXv4iymd/JmE5yXDd93IAqR+rhQCyxVQ0Q7k/Uoxk8VAG7frkiGYNDd16v/DDVQiRRlJk+mL0cO5mahdxQQHZxKFbe9W2vgx2fdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXbEOChK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXbEOChK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8AAC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742978993;
	bh=oFEuIbmDUHR4HXzNT+GOgynO4iC1VUfAGSt4N3uKMJw=;
	h=To:Subject:From:Date:From;
	b=gXbEOChKfB20b7RYH/iG5/86Y77S/ftXOB1jxaoCsuoBiW7wRT2TSCymIVLGdP0JK
	 aHEKDIM4kblsQ8dJIalFs0S2f8OWa/vNJf34dR20vgPLcel1sX/OyQqmBtbfffR4EC
	 9GS2kVpEYVB5XVUTKwhVMcYxm4BW0S2gY/gYRMaiWUKfAyfXvZWBpL8sQ5L7NRiE86
	 cGZZt+2J/B44h1c22rosBYaTh3vVAIuk2zfjDM/IOdRmi4YGiMuvC/BX3cSseAJw0I
	 G2OUpObfy2xDb1mVYG9ObsBoksNWiXXziBRAfhfAYbkR31Jc1RcSApzUHLGR8WcwCt
	 RfAiVKe447p3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F50C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174297899360.20157.16116831855047188828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7067de7a6aee65344c3ee208c96a138ca24cf2ea743c501fc238a5386cfd55cd
Date: Wed, 26 Mar 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742978993
