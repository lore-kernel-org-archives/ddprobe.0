Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4966F17BA2
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779499354; cv=none; b=QZzyLPDb1/q2HQnw34wUVB+T5N3MtkXikuk2cj/0qUVrzHGM574ck9Hud6eGJcc9/dLJGNRzBH/q6qUlcu4G+aL1JJTmCXors85rphng9xrt5Mr4v+RM2O4pN/Yw/phOwNuehG+ovBFT868bBW1mMdFdiA5nYn//D7X5lPUlrKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779499354; c=relaxed/simple;
	bh=qcX9mYhmG4r3LlXaV5sahXcAF3yKi+xLesJNt4yFKnk=;
	h=To:Subject:From:Message-Id:Date; b=E+7jXGa3FwM3B/ODdW0rUhq2xFHxdqJE39zJL/4fiGNib19YK5hhagW2F4E6s3BFSj/hEYlZFNo129Fx8rLLoMHn8keB6vLlhqYQzAhnjzyFKTkpHMkQrPfI02+9rnB2AqT0kXOY1EXQAh81VF4i5s/z4Vw62nJrg3Kk/lUTXUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2++iMpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2++iMpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0C6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779499353;
	bh=qcX9mYhmG4r3LlXaV5sahXcAF3yKi+xLesJNt4yFKnk=;
	h=To:Subject:From:Date:From;
	b=r2++iMpBSuaDhHmeHp0+F6VLW3p4jdinaCF5a+UpCUOsXZM4vRmvP6CmY1o3RACXn
	 X8L9pnhX11h7ap6F86z4hmpROVB2HPgXJ+Mk1PE+nCj27Uz1JjrswfzBz9M/PwFNDC
	 7EkXV8XSItAPB2cXd40pXK2eOmOUcWVNDEcxSSRb4xXtDi8xWZkS/po6oCwtKNvW4v
	 PZoiZgdw0ftp80Z2ZZ35NRHqft4tEA86kT/ix1kNoBTrFiEU4bhk/r0Hta1B0cC6hI
	 JbT42ezOnEM5EvgEd53Dn3JmPip/IRKfc6XJYVTCnsNdvyN2A8VlWogd5cnNAfkA3T
	 fQpJRfIqHJQPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A17CD5BB8
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949935369.24740.5696416380479476474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71429c7b2378d3a00d85070966a2bc565af61631b36cb9884c5d4e56381eaf53
Date: Sat, 23 May 2026 01:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779499353
