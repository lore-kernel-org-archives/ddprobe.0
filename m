Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B495A32
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742125794; cv=none; b=FpiQUZvQHqnPW1TNCOqKCOcxXKUlZ6bQpmrBUVoAGKJgVbFLmjlnnVXpZtqPaZzJdPJsLuSHTj+c82co81hifkR2gx/afRz5PBQaR8ZMDmHkRdbPZeNtJrFGrAm+QFTMltpdDL4x685aGE00+pQ8Wif3zMSYwDG2XusrhwusDGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742125794; c=relaxed/simple;
	bh=NmCKz3bnIjwnelxMgsdFwoyfnYh3pvNrVGsgceqRcM8=;
	h=To:Subject:From:Message-Id:Date; b=sHf7CslKqbN1A2WjNpGmmlcamICaQ0Ml9+Fst/mUbU0Y0KIjYkrJvyCFyg7V5HogzSZK2uZ1Cf4JU396v3wef9cB1S+hsPz4FgkQsAzJYWbyyerMCw7iVH//j19LY0Bqn14oGBvUpp8dknLMk3g0gBaITHFhIXdbuNN5jxMUad0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAO8Htmf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAO8Htmf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE0CFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742125793;
	bh=NmCKz3bnIjwnelxMgsdFwoyfnYh3pvNrVGsgceqRcM8=;
	h=To:Subject:From:Date:From;
	b=gAO8HtmfNVG/sB7bVr4yMA9SKQ1Ia4ZQOlXfUUUdYQGuByuqKmXPUu7975f1DV+z6
	 3xafMcJi3h0M3VakOC+9lfimBwX2YpEOpc9QUaT16vOP1gF0ht2gyGa78Kc1h1UAVw
	 ciaOU9o/bDPN0WOeLJJINSbTlTSRnSuL02/rRcwYZA9XzqOlQEE0Vq2g9oMV3lnha6
	 n8NclcmGmTqQKawzDEGKs66UNq0kpTlFS4y8L5q/mwM5d/QhlLnD5d1T77XqdeKxHb
	 bRMu77QESX/MCYlOKixPiMMb/T/5IPS/kpCuCEOSgiP3vj9S+LKxyxdsOGpDnf00Bx
	 XG3Q/IIpsZ7DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E84C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174212579358.5989.3339168187839241845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c79e34e57890855ca45b32591ea034806896bc04c7a03a01250b10993e0ad09
Date: Sun, 16 Mar 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742125793
