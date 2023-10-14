Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F99BE42
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJpYIHFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20BBC433C9
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697288828;
	bh=ehXTf/ZNkDb5Dsw8gDg+QuyXIghDy8gbvsGXAOO1sZo=;
	h=To:Subject:From:Date:From;
	b=MJpYIHFpU99nlARz6YQp+qU4uy7O4ahQjYLk3iBYfptjekH8/mjVHDB1kjqbRG4kV
	 sLBRe53t7cMz/fAxljhaGux7iGys53uwcWrSZMyDEa4CWfs4NiUeKG2TUo5pcayrPx
	 8sLulRej08+dLjFzzUI/5kGd5rd5EUjzDAnivec7TUMniWXNgpDt82v6xL9JsTrgv8
	 ZUOMlpy3Mnem2QByT0FzrYmCzmQh2vLiq/c1qbVOlXh09DFv+UGPBcP/B4QSu72Uhy
	 2A4elT4Z7jrEttxtrjPDaejvUZ5y5Cdj6yVA5fItEUs3PweSN7HBDD4YpWU5Kbtlug
	 SQbdhUGVUSYcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B19CDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 13:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169728882867.7003.11535540957187847274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69276b626d0fb1879e71887390d26c3fc1d973e6f664e4e45a60767ac94235d3
Date: Sat, 14 Oct 2023 13:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697288828
