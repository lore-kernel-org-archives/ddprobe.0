Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5337F15B0E6
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717021463; cv=none; b=ijzhiR0JlsXkFz7b6eMuXeQVEAV4nQVciO9ON3n8zT1Y7ifRnaZCv0Jkv5q3lfYzAwKZ34uWchMOp3SYV2bZNa1v5YaCbECuTEmCPEkMCT3ixxoU8COkIlTcsBddTuw1WC6qWqcCP1lM11io75dSy31ZnzqXgb9rkmClRjvnxEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717021463; c=relaxed/simple;
	bh=ps7uV8YusGTPvn+GQAO2mx4ED2Pdb52LsnjIiDUfQpQ=;
	h=To:Subject:From:Message-Id:Date; b=D3swdBAhpj3av9FkY4IMXXEG7sJKy4PB37fLBgXkX6cECP3Xfe2/XXnR6qDAy7BnmZ68GCc5o+r8t+ucYZrlmIGpVRBoSaodoPq5Z6wh0mxcpjHPrhQ1fIAFQ1mfkv+cSh9DKH4Sw+/hIQa5Ik4gAbxVkC7xETjY0AxiUE541LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ac3lzJ2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ac3lzJ2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1444C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717021462;
	bh=ps7uV8YusGTPvn+GQAO2mx4ED2Pdb52LsnjIiDUfQpQ=;
	h=To:Subject:From:Date:From;
	b=Ac3lzJ2Dnx+TJ1rDVFe8HRovHB5BrPR8K5FB0O9eHYWP0UoS6NL9y9pMjkE72j2Pv
	 i8uEwp1bJE5HGZ+9Ux6GDc8WEACXwnocoD0tXejod5bTiBWgL1goXwSKgIJZXbe4R5
	 hnJ+gv2g9h704NGXhCIAtgzy7HZ2QbuiOa/Pi/2l1pBHRDe41Tc3btEny93s1JRZvX
	 Oz2u5IZRel2oDpi9eSD/hx38R8O72FIz+PNGBz9zj9wbcWTNzMat4nW2jl3L+7Nks4
	 BGP9cCOWzxBmIHHM97TukTBBoRQPFFPyKk0m/CrS1/CKKpVAac5WKnAbig2sIvFRgq
	 oZEtqYkTnALQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD04CC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702146276.14063.14873052270707342658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75523db12c1fde5741598acec269348ccf008ecf889fab59a91168aa635af23d
Date: Wed, 29 May 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717021462
