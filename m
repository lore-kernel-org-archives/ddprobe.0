Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2434D12C544
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755182394; cv=none; b=jraa+xeUyFTSzVSpcEKG3w4+xNHZKYTY61rsfOPdtv92QZ64Yo7enRlpdT+GPJcFhBtjyDAQrUtYNzDd9anOTHQPweOuqt89GznqeJZT+YTG0VL7+dfE+f5wnQFd1Fgcqi+5uzuB85T6j8HvQD3n3JPKe/2ZsEkCYp0nfZIwu6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755182394; c=relaxed/simple;
	bh=+aBQj2ZZvqYwGpWellvGbjUEYVcimODkMMaRw2yifCI=;
	h=To:Subject:From:Message-Id:Date; b=afQYVnq6fM2EbWd7Hx38W+pXqXMlmC53WMCe3R1wm2PsfN/lLfW0iubR3aRhJI1mX0H6ztow6TnzAUrhva+aC8GPtEYqnJtp+izn3GEiew/yo8Hl/ffXFKanwkBmZ9/WqCN8eaVfpLLtP/xuyErLdoTTQ1Okd6HidFIStj4Ve+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0t5as6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0t5as6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B8FEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755182393;
	bh=+aBQj2ZZvqYwGpWellvGbjUEYVcimODkMMaRw2yifCI=;
	h=To:Subject:From:Date:From;
	b=o0t5as6X1Cp2587d1HP4cE0M6pctglb9LzBCCNdMLUJmNLdL2pqBkZ8xKs9n/M65+
	 SM5dV84J7+gXW0UbC5kjj0bzIYgJXOq987KCZZxnYPCenLEvk17mW5lw8b+Umt+vJj
	 RTj8Vzm8XW6gIdV+mbBH4HcqxoxESTNsIFioFhShLkzOgtdGPdiTlXv9E0jrV+14xu
	 Sb8qSODYKuDpkbv/qOUy9/yD4IKUbMO4ioZ9rhmwqO51sfAx/hu9vLtZkUwVwC81fr
	 qUNX9ntCMmY5P+AVEM7JlmhCCmLTNb98Z9jJDSKE4/DQbCF8y3IRyPiLLGOgY+TODH
	 BDGJu5J2m3MvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD3CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175518239357.9834.290732925326594738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281071494038fd78810aaa5bad92176cfcd9305fefdc375b1d274a6cfa15c3f9
Date: Thu, 14 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755182393
