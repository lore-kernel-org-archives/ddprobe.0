Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCCF267F77
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749994194; cv=none; b=udE2xlYhM9GdW5qc30bhG1M5fDxSH1F10kLdRAcOPz6q9MSyPvAb3bT/lvd45loourOYvsDtqWjq5+YF5w/GTf93+5HSMV9HAPAT83HK0Gz4r6KNrCU0/g2qfziQopKwjhI/2hlt0rx1J2NIFoVOv7Ighrk9LcWkZJb+dIP59MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749994194; c=relaxed/simple;
	bh=6XQTD7iSEuaWLpZrOVsRKSU3y8dYFObt9p+2UiEd7Ko=;
	h=To:Subject:From:Message-Id:Date; b=ajst2DtJw2nc81wAOKmPqSVT67Q8vO7WoMMlYaY6aPF1jAiXT69dC2N9DktsIVT20bWJa4DxmjpXp8CbTqJk/3Wc9+PDr0SH6ycOp0VESrILnfKvZHyzFBdrhuXe5yJ0xytDKowfGU237pPW2sA1QgZNUEaBz+oaKadkBQyoN+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s7i9A2YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s7i9A2YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC58C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749994193;
	bh=6XQTD7iSEuaWLpZrOVsRKSU3y8dYFObt9p+2UiEd7Ko=;
	h=To:Subject:From:Date:From;
	b=s7i9A2YPf1tqvPbejfIqyRyK0lj6oKGFofmHgWfl2+EjRSebgSP16Jo4jVQpNHLWg
	 atoKuOfohBQnvS95RXbLfPuU0qnaGd6+xmBCw5BO8DYFnSkFqO/ugLwoujN6BrL6b9
	 dqGdBg+Bu1AUtDiQYJTVNPnhuycI3fv1FUA7VY5T1tmI4grg0QrQyZF5As8LagDpB1
	 9hxD4c4gxcbb3raVirnxE7jR4HsNkJzHLQY2yxajG0KkGBx85Nfnkulltig9ivQmIw
	 0iqHMqwCSO3RLkDi7jZ9zqnDpTlE9qapoMFcYkiJjz3xRVreEWiLJdm6KfGOewq8vs
	 YmeiK1zTnAuQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979C0C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999419358.32031.7450375213233139477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa50285886d78444a5997fa8679df979affe63d8a4bcc441f5b2b3cf11fb7294
Date: Sun, 15 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749994193
