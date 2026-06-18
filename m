Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD0B7082D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781823394; cv=none; b=cDor6Lai9W0L26nLF7hBnvbAITBlzuFpMafPXEgUhG9E03j9Q0ELrjEm7eYJvuXdcXwaRLt9Mp5AWUSp54ctKvJsjyflRkET/I6mHH0O72bWr66qNTdoc8VcZTgxqnjesmi50oqifm2pM59yxZhb44Tt721d08HqMYLhSZl7YRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781823394; c=relaxed/simple;
	bh=h87bVMTysiCv9Kwr6tJxekdWLw/aZ4VHZsg8J+PmtP0=;
	h=To:Subject:From:Message-Id:Date; b=WtsuWpHDbBh0lXBz/1HXSFqJ+wUfUrFn2k9VQObQ1jvGBfBYVzTUfcT8C0Zm4rL4BMGtHOtyRtdTnxtdvTmuf0xN1QI/2r6yZomiNVKwMwOjCNY0h9vOV75+5rbxwgCLcw47kWg5Qx/ZB0ZnYbwCaQSMDl2NNHYkk1kjsXYkKxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M86S7H0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M86S7H0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2350C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781823393;
	bh=h87bVMTysiCv9Kwr6tJxekdWLw/aZ4VHZsg8J+PmtP0=;
	h=To:Subject:From:Date:From;
	b=M86S7H0cpo30KwF9pJvld/g+Qcekp7ncvnuQ830yzWCjx3Xzpr78yzIdloeqA+scm
	 bw6SX+5O3f0lGY17kxzJ9liO+YmYliOsqtgiPtKN4SGVXS6FrUTGT0gWUC8ue8Xj1C
	 hj+Ea1xUlZWEUYWVGyJB1Md84EqIYFaIWkOa2F/3IRTcHYkLmvElyvSqCMbOcClQBO
	 q/tII/AW6LSmHsaAaJkr35tXrfcIPU712V5hPX84MkN0q1oswxm5RjvV0PM6UGVKwt
	 a33gzXV0p7lRDGqnEoAf3jNvN8vYPaT+BDSXNPGZXPlYLIZlZ+ly00u93Reea/bBdz
	 Ls/WTwOFVGmFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF083CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182339368.26016.8902107054338801856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 732111b09a87ad191c59daf683a43fbc0c14359778272391119ec5faac598819
Date: Thu, 18 Jun 2026 22:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781823393
