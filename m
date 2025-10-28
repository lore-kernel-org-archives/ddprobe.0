Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CA12BE024
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761633594; cv=none; b=B7HPP4TkUAiCyCpJDm4AmBzaq08jalM935r7ZoFyP9vAYHpqf8rT1RMKnNKHMPcndvAC1T4Xke5P+W2w6goGN1nlK4Gf9iOHZooI/eDK/sH+54TAbTp7JAJAP2S1l3mQtv7it2xczayCDMM+7ek/gUy3gclyT79V8lp+IesZRS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761633594; c=relaxed/simple;
	bh=OqaPr/THwc/o4lOEF+felRxX9X2CC0lq8dTAY7eQQvM=;
	h=To:Subject:From:Message-Id:Date; b=IInQdq0UEYCHafhZfC3L78ZTmS2ofkTPx5h+GhrEJ6L/N+dNaciHsve+vybZz38BQSxnwCBgaZ5bSfNmuM0EWAVDv77ISOxYKPwZIxtxkdHBDXpZ5ojOS1i8ajREwCuq8CQELvNYfATcQqZjjH8d1ULkdwSf+pzlhUYLRm9M5VQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aq38aLMJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aq38aLMJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B827EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761633593;
	bh=OqaPr/THwc/o4lOEF+felRxX9X2CC0lq8dTAY7eQQvM=;
	h=To:Subject:From:Date:From;
	b=Aq38aLMJQUfKWVwWOIcjvI8ILg0seUtBKZgsqSGFlq+I+SQdYqxyOwxOXdL1TpiXR
	 hoyKRgPB508mQ8UqUPJHu6GHTg6rJRjLni6ZY8AWKJ4BoYcEEsHA9nqq/aik7sMZgB
	 6Wx7ylNZ6kkxfd15XsonqAKxfg5OeYl7oVkidv6yQFl81UJHPt9vz8Y1BfxPHnejZo
	 vsCaPHd3Q2FtLfWn4LNZszIVh+AGH6Z03V8ofTvWj1GjMUeQxwKBkpymPRXabSib6v
	 c9vDFrAWqoFkNtabF4bAS+JxbaATN7eqmcGb1bCymGVcoi88S7frOAcy8usGLYiR3b
	 hkO+Gg5cTdXLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D3BCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163359365.17855.2540823648734328123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec179f9f28ae340f53bb23bb563690a91defa6eb82ac67e782948b91e83490e
Date: Tue, 28 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761633593
