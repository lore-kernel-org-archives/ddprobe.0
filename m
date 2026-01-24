Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B3D190664
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769253834; cv=none; b=a5NvjWR8ml7Gho9IV4zCAsfE99hbnkV8BfH73Rsin2zT0Ho+sEJBSQlhAYPj85WvWoDKcekoDfj7+o9bE6sCcGC4OB37w2M5oJ2qwwg5WUyjFTk++xiCcpKGRXiFGjdjb/Gjnk2fN37Y61x4qlXJLR57tgWt6+ZST4Eh3inwB0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769253834; c=relaxed/simple;
	bh=G+6atdYjhpOkkghQc1jz/zrwNQp/vGG6sFeougN/C4E=;
	h=To:Subject:From:Message-Id:Date; b=BgHNiM1eS8oaoZ/chJ6CrtZ6Xkrp+dxmqu9+4GZ6un3h7xGUPHGSXkgffOr4eoCxWcjiEd8cZQ94DOWq2uC2Cw/wAZN+qRkZTa4Ehy5hg/P4Oy1zNUPZWE7L54hzHly4zAAakXlhzotEHi1TZ6ZyRw/xtO2zdZZauIjgr5GnT9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRNg/jN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRNg/jN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF69C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769253833;
	bh=G+6atdYjhpOkkghQc1jz/zrwNQp/vGG6sFeougN/C4E=;
	h=To:Subject:From:Date:From;
	b=CRNg/jN+X3f5dmOtSJHPWDA/y7sSXXbcqNFnUnD7FG4tLs0yAcMrYeaFIByIohbk1
	 /EHHQFlTK5+XHzdAikUTRi0FkRYaTNwo6NKfzSqa3JJ7cc82AkcXvlbmrgfiYZkr2b
	 pQNSSe230rPJUZZBkRjKLVx4jYUranXLxuJ6BOV6oGAV3zi3iSOWCgWlFF/2gOi4mm
	 WPbzPLDxhYh5Vop0vIj6hSEGtN9M76blwvDxbHX9rOqAwOG2acC68yMhO4Qb4NFEZP
	 1Zkdw9cTBO7kKPfzq9aRS0vQAH51nEy2RdUxGCRFxw1Ci8OScuEIEzHVuRusKTbYnO
	 uRlArqW1SEQJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F09CD715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925383357.5317.5520020689327701199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450206dbeea8bff191686c2090aeb688626beaae45e2c311321024d047eef15f
Date: Sat, 24 Jan 2026 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769253833
