Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E1323E334
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777980454; cv=none; b=U6rc4oFNJpJRxmrcSsrbucK8NAZ5YzHxKMVgJQEPjFLgQE1EAPtZ1MDIIIRbVza0Flp7vVW4H7vCat4fMR5Ebn1GNDyROVhj9HAF5PaywxfwDDiSaWN/WORHwvgmz2sGu7ZfIg14g8yQ77jGkJ12VAgVLfUQ4duLsgWl6eU/ksg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777980454; c=relaxed/simple;
	bh=Kr3zI/oxVRic4Ic0gWVOR+vgLkWwokmtEuaxaYpK+Zc=;
	h=To:Subject:From:Message-Id:Date; b=BoW8dxXM00K1ipoM0mLPI/xdatjOTvi7aDrohGjsGw0Zko2BPCRbdm19RLwl4rZgkjKIgvg9pDyTFsgjeWwudyhLu7EKKltY3OwZf0WTBCv+LOr7h8Z//UK1zFa0o009gEN4tHXLkH+vARsjz4zaVOOs1+L3k29TJmUQZcLh6fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR6LiaQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR6LiaQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE896C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777980453;
	bh=Kr3zI/oxVRic4Ic0gWVOR+vgLkWwokmtEuaxaYpK+Zc=;
	h=To:Subject:From:Date:From;
	b=DR6LiaQKAajpH8QdFWP4bSfZrS4FYn24ck8nip1HiTwFTJ8ulrdZk2YmOJDSVnrHJ
	 GDz/F6aJ7O13sx3wMRI60QlEJ1Jd2EWRGiQ+yG6f0hM87zuKplM56Zy6vCWtn37Aar
	 HG35/xoCUtzbHNzMorSIpf6KRDMg1xrpq6Abyx5ZgJeJ6KtzP1JHmtoPQmdWGd6Gq5
	 Dn00fpt8XO7y+jVfsJvXUdYyUR/X9n45T/LuPmLi0wd/lpvy5iYfn5QScEUhXLx9e9
	 SpkZEhEHrQkWcI90lB1FMOJt2bHP+Erze7U4Q4GrS5Jae5o4rz+jNPT6n+SMySTdCh
	 SnhQP6vXlynmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD40EFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177798045368.24825.5841417916918632216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a259044500a2ed5682de799bfd0196a730861353e87c1bfb8bb7531d866f97cb
Date: Tue, 05 May 2026 11:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777980453
