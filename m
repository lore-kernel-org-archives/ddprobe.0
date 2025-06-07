Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34713EC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749294594; cv=none; b=G/RZjwqXBQecttKMnCfONLF+SE6aWwYI4mHzViAmGQfWC6OzCdyN+QKQwCSD0fCE1gga02iuk0ts/S3FmhktfvTpQxIkSLa9fqv8TEeDO4Wx7Qc/NTiMncL7UnXKJuxMFFLRUVPwNVBPSjexhYvoTZBGJvxeFYyDIcIsAYQFgl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749294594; c=relaxed/simple;
	bh=oEq93cyovMCOW5PloVKJvZbDTeDGqpi7bc5uyG1Wgko=;
	h=To:Subject:From:Message-Id:Date; b=fOqGJ2FfjoLKMzcC8YeNf4MEcjaHLsXw76KwloVeTFBjgUYrIXQbPdwlzzEZm+8lWSTUOEOPVPVGZ98kIgAJYecJaenPZpFUIhrzBdxbnf3FM5WuZlGpE1j7Z27S5dETGOzRQjtSQYT5+4h2Km8tZllDjbjn0SIIHrtiqzXkkrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaQ2LBWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaQ2LBWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE05C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749294593;
	bh=oEq93cyovMCOW5PloVKJvZbDTeDGqpi7bc5uyG1Wgko=;
	h=To:Subject:From:Date:From;
	b=aaQ2LBWcXY5TRHdo2yhGYOU+ayaA6sxIVUJhJqLenh/16df1S8Bhsjd9U70gv2s1l
	 0Oj81nm9WYVv3NiIC1PYR5rA+kJfH2ahnhLeiqTOkVMpj18vAQiQ8U+x7zYROtHKaS
	 e2CShUIXwMToD8LFgkinBnrwWHed9Iw7MTpM/3fzLQQ8UdKtwpq2XOffT8tKzWqTc7
	 InzYffNeKQrIFgBsLsMTpyG+kRIrn9uu8TnWk5xgM2uNFI6beLQGu7NfTsJ4OsIb9B
	 /5psDPfqzdJFWJ8cO/sOW0vQXejeZik/DmGpthg1PtKcMcuAdl/8TaVutDvnoOlXC6
	 Kn6+YvqT8SLxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90213C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929459358.17464.17296415185215921050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1676d950903e6318c65550b61afddae06316056b6d6f78105032e4167fff9cb0
Date: Sat, 07 Jun 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749294593
