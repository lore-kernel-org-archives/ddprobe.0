Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC441D5ADE
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744325394; cv=none; b=p1fmtWkrTnZm/rStccmXaizl5L1l3r4skAE2LJroujMC4oOgyZQl5k17Qwfzth4qbj2uN4aKt/jmhDlB1GH1/uzmcwoRkHlFWhc/3bFKqE5qnEwlMwqW8lgnuXee0B6N6oHr/D7Z6dHA9hxyOGDmGfrR4Oayi5HojIQBa9F1hVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744325394; c=relaxed/simple;
	bh=SCbGNEhBey+kPxVxbuiaR1lstxeWbWtFm/EjVOvSFMw=;
	h=To:Subject:From:Message-Id:Date; b=K3f+R6ppHOhZYqWU/OwiEpbGEeYPUwsv9U1bjqbpyiOjyvPsVvMy0YFpevFH17DqqWO0TFKn7pCKIt+SQRYZZm3TNHAgXaUMGyCPxfnmNbac36LUfBQbCW5oNRNJlx0NpJrBxCEXDSpzg8a84WEWuhm5PCqpZGrGsDcoqowimzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBOBlm+D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBOBlm+D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6BEBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744325393;
	bh=SCbGNEhBey+kPxVxbuiaR1lstxeWbWtFm/EjVOvSFMw=;
	h=To:Subject:From:Date:From;
	b=vBOBlm+DsOjJ9WPHGERGiyvItRi3UNqFNR1tELnNLtj4d2zvjiE4t2d4jNPcXX126
	 FIENJqaK6rLmLZ7e4IwYoUIrep/rIXbR4iHg1RQPPwO+gOKC7N8BeETZBJmWLaGjSI
	 PaO+9Z/xmiUbW8obcKegw6RfBmcVc+7CMu/44IVQUifU3tIN0Bz2FFD0iT9c3CRuj1
	 hNRdVQnAyO93BF8URK9Ro+Mjb3SE/zBxNYKzMaK278lcgCh3+kx8BFfDQXf+dOdiP1
	 miBjr/FPjRJ1mBADAT6R3UNU2otaaGVFbHKwDwvBFEBLqN5+pRaYuhtsdaFxMGYfd7
	 rDs44Es6/0ewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12DFC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432539364.14842.6918119928254433787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7973c1165d97753bcc435597d213ec3974d83ece66384b741b1ac417946dbc6
Date: Thu, 10 Apr 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744325393
