Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0284D78F26
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771769094; cv=none; b=au0Dj2xoufPYzzk7rrt5dEkb91yMd0pgPwcPZWOnqMD+dW2pdL6PnIReiDNFgr4Uu7RGvDz461SpcBgsqgayWFtUcFBNNq852oy2BiiNtA4Nhn462NLGqFJmJCzzV/av/oEit1Y0sRKSOSMRM+HN1Gep6nbgc8A7Peb47J6AYtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771769094; c=relaxed/simple;
	bh=MO9JDvrSFCQAtMml9CrEVtDCKh+l5rVO73fQquWMbOo=;
	h=To:Subject:From:Message-Id:Date; b=gE4yiHXfK0ebJVB1BfBFtE4ZNx4R3mbyHrLWqtWSp7sZHEYA6k5cl25cEwpiN9QrXiMBxUB9dYXGsWac4Bvx0+FH0FEk8N0fB0PV/dSf8+j1tzoLvTEy2xXRhMckyPyvGFPEg4gkExEuFp3wSJkuEftTrtLIx0smwTBrW2odhdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVefYE3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVefYE3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41E6C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771769093;
	bh=MO9JDvrSFCQAtMml9CrEVtDCKh+l5rVO73fQquWMbOo=;
	h=To:Subject:From:Date:From;
	b=UVefYE3HUHXh8dhpq/D2M1idCPg9YxZrLpGBd5pCOHWm6sR6o/Eepo65mSV86+zm5
	 HQnl/mq8w6oGs5A8MdNp/nBnonzL+e6/9n4ku7nQh+LEg+nd0O7fmwOXubfly635eU
	 VVmh1bP7wrze0HWW0RfwJZ0v8+Zm84S9jY6CusTsM7zVy38Lh6/Vfb+8HbDy4iWX5f
	 PhvIBUkYsYY6Km8C6C6J+DpYVGeW2NREhDvJI1WKSvoPTWFc3BkJ33RnP/Pasa0VgX
	 OaE6VF6ejVSiqKXn+nQQgPxmbqMFSop00c21i/RLJY5+Fb/B5Et11UqUb3/Gz/KVkB
	 Ww/ScyELhwuSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95533C6369F
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176909357.31029.1455522233030287619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b98dec52002cba9771d055ecff2b4340f943f4b43163768a7691521e6b54969
Date: Sun, 22 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771769093
