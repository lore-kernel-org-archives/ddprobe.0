Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC031DE4EC
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741262334; cv=none; b=tABDDbr4FC+xfvhPj3YgfoQSJuD5QGvl65MqfVPjh2P719nCnt3JZp2IgEJu54NCYzFUImzCxX8e6f0UEoKy8RoFDTYkxudwlfDchUWScON+no4AbyGpsDW+w5KqEn/2l3apf1vebe4gD7ebVlvDQFBFEXUsXeJbMPjuRby1xzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741262334; c=relaxed/simple;
	bh=oj09zPEmte8qn3JIU6vQK0/igmRQJNHXnngefc8CNyw=;
	h=To:Subject:From:Message-Id:Date; b=a6Wc5F/MFnDMc8Q5TsS994nYX2VBtoAfNfQhgd0uZ7MRXIi1ze8QUEJxn7BEUjCB2eNaX/f3BOPGl1cLEgFSJe8rF0MJn/PHPVCrws5DjYXohUTRIuRmQpEA0bwFooF+6wY5HFtTgrLhptbS8kPNZgk9ZW+WqkbdJaYUBx00Dm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv3cq9qf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv3cq9qf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CB8C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741262333;
	bh=oj09zPEmte8qn3JIU6vQK0/igmRQJNHXnngefc8CNyw=;
	h=To:Subject:From:Date:From;
	b=Fv3cq9qfI1/DBzI/xI6bX1REzR3OuHhjSC80MFvqXNbK2TGBlqEyPw4lnhIE1Up5F
	 yW644VXa/Ovbviv3W2guOXE2QtW2byXqWfcQt569PUjFLtCLAxP+Hf0Xp28sYeOfJR
	 1qVhUCNXS8fUI5EkGwdfgcBgrZ0GDuZNxB/eJG3HD3N65DuSXS3xZFfb30aMaNPB/n
	 BvsaR6KCsqYGcRVwm6tcdtGfSs1h5e0nh3imE/5A3Wq1z3TH8L5TFQJ81T+gyGxX1I
	 qpbqJZd7YtelevF0NRTfK3HYO8Ex7UoomEr6wrUIgoxJlyY7ZhpygRpx8h63HN3nKq
	 JkN44UQV77/IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978A6C282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174126233360.10758.12021940489499455956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6af725db6d992b73cea06ba97403304402f77477c691925d9f53eb8c8c0777a
Date: Thu, 06 Mar 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741262333
