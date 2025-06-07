Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB17258CD9
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749261594; cv=none; b=Ynlq0k6Rpvi35llh/5f/Bd+WqGzSU2MvZFRi63swPbUq8HcRr4ED9+XFHJkopg4bjsPa607qVxcJEkNbdWT45PlvkisL1YRKY+oDQpwFAdEK1zrGbueCM7/EcBPLzR+j5zJlAezOTiA0gB5YTMiopR2p62DkFFSwk/wK1nEMQp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749261594; c=relaxed/simple;
	bh=TFTd1lr6a7Nt1KRrPxDM6Xs6Z78FhaekLIBp6sYezms=;
	h=To:Subject:From:Message-Id:Date; b=OCUwCzVxEDuwe8M3de4smUw+F1UHPVyI5vm8sfVC7lb8s8BYMft5utVd8smz404DWlSeVimvKpzyfeTJbBOgvAZSNESDUZxJFz9NJMjYzhpup0Hm9+e2RLH70VQOTX8MkAq7Hx/SH09O3JtmRy42UFD+o7Dni15h4N3No/68JIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEl6le/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEl6le/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A5DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749261593;
	bh=TFTd1lr6a7Nt1KRrPxDM6Xs6Z78FhaekLIBp6sYezms=;
	h=To:Subject:From:Date:From;
	b=QEl6le/dWmoAnzCNEDEm1yAb9HQXaJGOBx/gt5sg6NkEZ1nh9UdbKmmHmu5D6kKFF
	 G9A+jgeVQNDMkCWXu+CKpCO3irAM0aJDVGKm5jSqq2xvIXqNyADBcPueinEYXdsBsz
	 mzVLVjlmUQz7riQc1Qp9Sj3c+h8VCG2AHzp7wS1hf0AoVXb92wcyy9aj5IUo6W5WBp
	 sN3Rcfmi7yG86gQeMGjuYKwaDoRn52sdXc5JmFupz+pLUg8JcDY8uyQ0jCUkHSAba2
	 iYmqNAmffMabgQEMjTegJ0NeUKuFQiD2xqNqr9YJEC4j205ybhqMwgbXEun55MV+IH
	 DEdGZds8aJtdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9500AC61CE8
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926159357.3576.934938074264520375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659e2e62bb2574661a17d82a754dd736b4224028cd07842480aad75cde364b16
Date: Sat, 07 Jun 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749261593
