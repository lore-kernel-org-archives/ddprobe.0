Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180F346B5
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758995994; cv=none; b=og8BEKuWDZMXeEN3uVquO/7UNKmBe5CiFH/Lo/5vHSjLhEUxJ0AzGY9wT93KuiIpwN2jkRZXnc52U97vbMFfymZ6be1vz5gwcphnbJLKPeeGmjNRAr3c42CZ2zHnnR8SgdsH7Uxh7hUsnGKKJZLjMP/NQZ3qV3iSERmdvprcibQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758995994; c=relaxed/simple;
	bh=QdFRLUYIlSJ9Wd57N4174iWFi+zutQxROUa5XOutDLQ=;
	h=To:Subject:From:Message-Id:Date; b=uthSrRKXvAqr9klkVcQJsE9nNbUn6jO6GxXvJEeMwBho49CxCDxWN3benhqsY8OCXJ6GSjs6q4jcSclzZViiOJ13dWewRvDqTadEYQVAOF9GOtZCh/mwFWuTp0C7PMZCpElf8D15tEUeYeOaYlxrgnxx3EcmmHHHA+aSLHyz4LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAlOaeKl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAlOaeKl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9019C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758995993;
	bh=QdFRLUYIlSJ9Wd57N4174iWFi+zutQxROUa5XOutDLQ=;
	h=To:Subject:From:Date:From;
	b=nAlOaeKlf0g83Veqc/KcKh/62pf2ca+QZ/f4fkqzEaqxEHigVZEaTYFjvEhNJWQt0
	 q4bGtsUGV6Ik0ygk6qZpTqYMHYbV7v80FoGO+2JqBRNMnu3+BmyDKFwhf3wclC3PGr
	 k3ctOh6U5F9wjZtWCUbne2ZhFjnGKN+j52A9ju0J1tignXdHhKiXyVob9orJYvuLcg
	 3XcCOciVEgk2F2PiKbCohRBSnSinJSvlvhl8KGwjomgaumZkhFqpImt2CgCXmXIjDX
	 oEcItRvE68o1RHdGi2Loq8lsIpd58OgGhCcuScvgxySm43G9LHPmTnTCm5xZ3fI18u
	 7V0pyJ/MlRIkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96909CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175899599358.16788.5371743034996388563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8473e79500391fdb8c8b9319e2d53df0c9b8865c0f7ca3c02bffcc65e5ad5d
Date: Sat, 27 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758995993
