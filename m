Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022053EFD21
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772270094; cv=none; b=kgsXA6/4qp+EUv0Zpui4YW0u0DmdZVY3+0Rh0DYc8fckDcEUIIh7L7qW7P/DBJ7hDCw9pAQ4pYD8512SSVbai/pd/lCpouvfAu8dK0zqVq8FAjgQAzwHKJQSCepDk85SKU38dj0LPqSbMzsFiKVKVn1nTpj/VnvaHcvF93xOKf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772270094; c=relaxed/simple;
	bh=YE/tN4GkP6wHLnGHHVYrDq0xaaQjmnNqQ1fYiJrqVss=;
	h=To:Subject:From:Message-Id:Date; b=FEHxpFmgBi24jPE7eJrB9JGQGmRh20eLcn4Vx3Obl6EhIHH98uYlUVAD1lmAZupoKsLdZUv0n7l77oL6Z1BfR55GfC1IV4AwbHTAp26mxJrLv5+nvSPgd7bb56689FJuVb5A75zQ6XrmeA4nOXyZWaP2ThZjARUKiUZChngGFIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T45x/xtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T45x/xtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D372C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772270093;
	bh=YE/tN4GkP6wHLnGHHVYrDq0xaaQjmnNqQ1fYiJrqVss=;
	h=To:Subject:From:Date:From;
	b=T45x/xtuwfcAls+qNvFAMNqGSfWY4r8F7Tt65EKmY7OPUTAUOJ70XN+m7osb3/f+o
	 p/8mULgjkVPQV5dx91C0pgfgLu/76tVvUIWik77DfpbrGRHx3rb2M/K8jatPYendZ4
	 eQcPvIo6We0tNqqqYiiZGT7yDWqqJCt7i82OshcxoUpkRWcUmeWaOA35GPRHMx8bLX
	 r5I5n1jqtEjNbPk5MorCtaJNDzVYcKrHkvrj7GHI+YM3aDIqur/UfV/qLJw4W5QV4Y
	 VaHNdhzXhw379hPQeYTtb2+68YGUo1GAgUGc4XGiau2rYA17A5iUt9Rboc/p4MaXpG
	 Q7TnDRYgnqZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F350FEE4D9
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177227009357.28055.26321143221094071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecc5af4a35b1b427466e1e68b12a052d8da36c475d60035de2c185fc7c215482
Date: Sat, 28 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772270093
