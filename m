Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299932080E8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736545554; cv=none; b=Af1FbettWdWPfP2SVc4XKHiboB5Dgo2NHgs1c0xnnYpGZ94fXotb27OmdK/Lfrl73mz1IbgXx5ThwLAeY9Ky11za5fFLQcZcmTA1End6/Ol7MOzy1jPE3ZPCYPrLTRHQDwlxfcs3petWOZ5vb6LgApN5QTzr9qRdxIvq8gnzjt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736545554; c=relaxed/simple;
	bh=vVNvhh4jk8n+3tKxxNgNk2O2p/CGe7mr3rLR9A1zQlI=;
	h=To:Subject:From:Message-Id:Date; b=rdGG9FSY4pVPiaq0vml7e379NAz+J/CLLcf77UhdGwoY6EBR15urVtRXYv+Lj6cwpevjFUWW+LjiL99oNDYxx/i8sftrQMF7fZxYOV873JjFEHNF8Irv+exBszUni/CNtfSbqb4tf4DlbE88fuownZ5CbY5j+2ha//cU9qtIr5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XvRjzHAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XvRjzHAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B97C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736545553;
	bh=vVNvhh4jk8n+3tKxxNgNk2O2p/CGe7mr3rLR9A1zQlI=;
	h=To:Subject:From:Date:From;
	b=XvRjzHAxf5wB/jv+8kSq8249rasFnQ4+GdloMNB3tDQDpYvv2uEa/xwrLLxHH0PQ4
	 JRpNa7bbie/Ef+WztVLIjQ7E1KLqIbBgEh0XG8jHZXovnTlc+cs8v5gJYrwlhPtXrN
	 Swn6wrThWVQKpTrEXZG1PUv6hvB4B9YKVUjQzsV7Vmod6x98N/ThpFW7hQWgvfFTnA
	 9s0cj/+VkkUuQaTN6nnK/ZJHpwS6rrL8Tv/qL22V7aeN8cu47pk96OURuFdMlhtF/C
	 Ib0wvnxJALRx5vTaZXsoZenlciVVRhOI6KtxJCMMQFhOkfIEnmN4dGXaujGFpdyyFr
	 SSX2+ZJ7lku/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDBDE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654555357.21640.17289558568301389970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faabbd5920ac2b73465703fdf0e19e9967905ad46e17d2fdd2f3aa44d80ab9fc
Date: Fri, 10 Jan 2025 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736545553
