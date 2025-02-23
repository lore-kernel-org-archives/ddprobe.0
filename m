Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B0CCA64
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740336534; cv=none; b=WqGOLbjDmVZ4JkZpx6xveCGCnfWWaxs4sYxcL2bqPKM2SEVH3wMNtagyBwRmVsgbBrDlq/77YTW5S+x2IyoUS3mPWLrWWjmuQmg90L5WLQhJTOKZmTncRKl44mmt8HBBR9p4dr4CRBvjP74ijlq7qtR9pWd92/3h6VpzwtqZlbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740336534; c=relaxed/simple;
	bh=hH9wjQVtgG5AOtdyhHUbL74Wgnvj4aZdnPpFGaXlHoY=;
	h=To:Subject:From:Message-Id:Date; b=pCkHy1AB89T6tkN46aZk4A+wZmg8ZcwXJq2ooLY2CppjmdRKMWhZ/B2hZfVqxgK/Fys1BVSuT7TOJzJo3s3nUOmC96qKYP4sY17umCdlT37nhrdrnFvLhlmgABlmjT7CqUmbmAFJ8T8rL+zz0YsUQxiv0jaV+tYeFVXbBbD0eJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYAoAptS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYAoAptS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A982BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740336533;
	bh=hH9wjQVtgG5AOtdyhHUbL74Wgnvj4aZdnPpFGaXlHoY=;
	h=To:Subject:From:Date:From;
	b=cYAoAptS8WWgJGt56UBvF2/wq2dkklksnf6fToZDqPTV9Zk/sAGF8Ev4YNwqtbwLE
	 o8uV22t20NZz3KVQN+fKKWbWGWDtfc12qwDbJokVn2TAclew5TfH9h0M0Z6eyFeBxB
	 z8/OH8fJqIKn1yyPZQIN52J3OXWDsRhWVMdgqKoZTX/L+8Uvw+eQfPUmLiRpyl7taf
	 uZNQ4wMvan9hjaewaMTjlUl5VTH5qtEascyvEYseyqSRqPxR3PkTdox76OBP2/dtZ3
	 wPlKEGT4MRycBXjYFmEH+QTCHGuL5Fm4IXoPxwCJ5PV9BeVj+5hwN/O5p7vbe20Ms7
	 3HIFRiOZZLUIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948EBC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174033653359.23593.12040419449034053256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db01775ae622df71b37c556ac807daa1d52dd24bcf1aeea79bca09053e30baf3
Date: Sun, 23 Feb 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740336533
