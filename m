Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2FA3783DE
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780921474; cv=none; b=HYmxnEOfCRQWInpzf0oogLbsfMDrYn0mYCjQI+pNh2xXH76LaE9bPgD4NC2XCuKTQwh7dwsyYDGQhsqF1I70gUq5vIUweFRWywe6n1YiR74JoPnVwym7wpeQ5P95FkqZRykwibdSWAjALmv1mwOXOPT/tNSeGFbkjK3I82id5Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780921474; c=relaxed/simple;
	bh=762SRWH2Kea2Xq1/mXq/iKCJKrlUc6Lvfbe8ZoTCVeQ=;
	h=To:Subject:From:Message-Id:Date; b=RUty7JTuiwnLfqnpuPJCuxvjUrNwodfIhO/DZwSfUlF4mSN+VNXqKZYQVCvVSNzwCb/SvolYxZg3/CFf1jHcFSN9B2DE+w+tkI4xNFD0SrXmRgQgiEDMn3xjsaFjll9ZrGTh7CjYVj7TcOJwpA2nfWcYteR6HceZuNamL7CHNw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9alC/4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9alC/4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C14A8C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780921473;
	bh=762SRWH2Kea2Xq1/mXq/iKCJKrlUc6Lvfbe8ZoTCVeQ=;
	h=To:Subject:From:Date:From;
	b=F9alC/4NciKB+r5uwJLcG6nPijSCtpqARdEV/g+D7suPYW3VBpozdYTSpAUHbLarI
	 3d7YfB6n8uiIrwe/UP+rm5P9YTUmWqOceFyBj1QgOgVwKmFTvkdEJYItmudSw1ktsE
	 ydjeS6y9e4Q4BuAqVVJjGuAGr4BYdfdLuztUexoj4/32e2faSG7XaBvRCPXq2Si8Sd
	 amnp/W0/KUT/VzopuJqTckFNW8dLvKNo+x0ob+Lq/FbpIgrtml8HBaQyZG+vqpTT30
	 fSia5g12BbTsnq7vgjXbcIGZWXmwU0vgPGHb9KG1PbVHPFmBrTGIwJWdx/VQ3OL2uT
	 L5k+LevstTBJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE010CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 12:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178092147370.311.4318212340395501756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be5b2a304a4345aa5694bfc2c063f81764b149fe1951ba0e4718142229b5b046
Date: Mon, 08 Jun 2026 12:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780921473
