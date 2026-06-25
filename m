Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FFC2236F7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782412654; cv=none; b=Yt4B0hlxfM5/RL7YvC7lC856gPqoF3mAcw3E9X5HErDXY4G4GDKcnUhDQnrKDR5pBTJUYjGbGkucUe+1R1GZOogA/5T+vB0jKDbPTJ6Gp4lJClovRlVfw7oUeddKPBxop/s8Lcv/5nZNy1uMIjkcoCGen9r6o/aJAdQ/SPzhVko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782412654; c=relaxed/simple;
	bh=QkMF6mWcQxBzbHgyYP7cWL+HAt7zk14beTX8eF7LHZM=;
	h=To:Subject:From:Message-Id:Date; b=d3kG+nauF4GvQSvXvvrtvOcBe/1tBHgySLsX/uZj30cGzOtD6KFRet0HsU52LR6I70Gw2SrwGYAAFKqSHDDtaJCk3rT1OxYOD4OGN/WQ/zRBV7qLE1jAbU54svrYW2mPGAvoMstPVWAGHmVuXqA6FoOooT2ZHmehPKEAEjh20w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOroki7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOroki7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0D7B0C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782412654;
	bh=QkMF6mWcQxBzbHgyYP7cWL+HAt7zk14beTX8eF7LHZM=;
	h=To:Subject:From:Date:From;
	b=IOroki7wkqm7Q45CvtO8qMeuyHKetySmHpZHL3mIvB3ATNS/IIpLubA1WZrPBJZM5
	 Up18+4BnApc/xPuJiYqQD/OOgI7eN99TWJ+AqQBXBRuRo1Psgn66Pqc8raOU9W7kH1
	 TeWlg8tAJ+2R9SMpPpk9HnnGiwAZcTBcPuLb/f9Jj7okZKEt8ZcZsLmt97uKq+rWN3
	 k0LyGyonqDFwdlkej2RVP5USjuWdc+xsgsCl3coOiDxKMceEjiwrTcwk4oR8EpFZSn
	 6cUFymPdx9oZoGBQE9t0eSgBkkZGYIBBt72I+VDLT1vRrAIai43oWyk4WVk6bNZHcw
	 RT/Sjm4skSSww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2C65CDE009
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241265371.22586.5605273188421926317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb29a764d6a0900e15c5998432ba7839e49a9e0b50cdcbe37c2cba4b4c0ab30c
Date: Thu, 25 Jun 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782412653
