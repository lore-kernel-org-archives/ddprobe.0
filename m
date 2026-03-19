Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E942D3B585D
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773912294; cv=none; b=Gv8Ej7yeDLmDR/zyF+QMvgQNn+DEFFF38vHllxAs9ts/VYgglnVwHR1Gmk5P3/zvIC6O3a4g8MEklO7zmX92LJ9LZSVL4B4SXsdXBoJZqRuRxAx5uRHxL9CV7ghwyAzmDkKdOvNQ3wMV2N6rOaWFuAJqRO/IezJC7WG5aoamlw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773912294; c=relaxed/simple;
	bh=YeI1DjrOBd0qyyWAfTtl89Uqs8/YO+HncpX7TY/pKUo=;
	h=To:Subject:From:Message-Id:Date; b=E5qPP8g+PdvwKpWnoXO5fb1Pd/befu5Ry3S6cTQkMtmyLoRP057CYlNYVQ4y5n6TIg9i0OerZC/xNIUkAZemDcXNVdT27NwtO3PKOltJhdE0sZOaIsbPeY0YkFDaLO29z1EGrA6sZNPH5y+EcBhrk/K7D5y56EeQcR11f4aFUD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRg6AIUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRg6AIUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B02C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773912293;
	bh=YeI1DjrOBd0qyyWAfTtl89Uqs8/YO+HncpX7TY/pKUo=;
	h=To:Subject:From:Date:From;
	b=CRg6AIURzutNQDottrb6tABQNskuc6Uabzcczg0rg3CmfpH1N1EkE9K8TGivXeLIk
	 b5r0Tr8BBWiaE5hDfmSx5vH3xaOBFHAzQ6JoNIWeUCqZfkiZuE23Jfp/K3/7ubDKRR
	 7qb6F9nS9v1jjaQXd1te5TLSpnH2APaP02TtelSS6u6FDIxL7yNzPybtyfS889g2Za
	 egNh2pOUX6vIdSyeLR6Cg842vGxGDlKelUBJeWVDF0Q/Z1elOV1G6ZkM+/J2MYqdlb
	 z6/ezNhQS7Wcj/Kqzh63n0DQgN5n9P3+NCXCuEWmhNcXYjB2zJ8C7EKF1IXhSYQcAt
	 lSNOphEd4Vmag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F80F1075283
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391229357.7285.3561315198997622377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6bde631213b176e34fb390347e0563c4250c800ec311ee81e45871657a1d98
Date: Thu, 19 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773912293
