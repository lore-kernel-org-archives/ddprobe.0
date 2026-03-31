Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E165F329E4B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774974294; cv=none; b=DtLLDbX0zDI7u7+IY39gAy8KPF1AsbMqcSe79J63PRop+mrP2e54KsKc5t0MXZtuRP0iPUf73MPV0hIe72cdMD57b9xPO9a6v8icoon16xX9bwRsurRqB0k5zTDaABSo0GGmpS7hM1MOcochD4rQbRbZRk6Ry1Sg3qB6IT2F0GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774974294; c=relaxed/simple;
	bh=WDx4R+uzmZG9y84U+5x3YP7MLeDoq1RpJU8/Ov93E0c=;
	h=To:Subject:From:Message-Id:Date; b=k1zfC5VXj/9p8GqzKJnzQXznkpk38b0FXpWacQh9SzEuJA4eoFuSznvPMOBTFw2wROXyKDvW/+G313VZkpWD3lLE86Fg+rg4N1bSOiS7XTAOjf1R9NrTLfo3wsDZlZ9dZd1NuqsxUXZ8LC6mEvE6U/xhG58Qe4Mf8DnjmWkwaNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pu9i/u6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pu9i/u6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BB9C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774974293;
	bh=WDx4R+uzmZG9y84U+5x3YP7MLeDoq1RpJU8/Ov93E0c=;
	h=To:Subject:From:Date:From;
	b=Pu9i/u6PmIYZRHiwBwRypZHopQMinXUwxWZs35r8113tVPbBrg2j4dqnb9fXsm+YK
	 45HXXIlkmI7+Xtd6ZuiVE4cLlkcA3YqcQD/DBfyKOygAn5C3NbYXMurs38IYCq3kBA
	 CwSB+fheyX/MPfVpB+7ohVCirN+7R69H2K0YpxxvBAq0vERExxHY4A6ybhwtPywUMV
	 HQMx8EbWwSVTB8tLWQQibAWRk/0c9MiulLNtX3iS4cjZs9jTM3J1QAJFIyrEMCE8LZ
	 8+0T6OVnz2Lb0kmMt4q0Gm+PVed02Dj36Qnpf54oc4yP6jk4QdUuDqMK37pGrS19qs
	 r3USKExVb02pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CF810F92E5
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497429361.8621.5547844251904253566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9ab25491bb86b65f8ef47a262748fac39334a27dbf77bf6811765151f746ac
Date: Tue, 31 Mar 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774974293
