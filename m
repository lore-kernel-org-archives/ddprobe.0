Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC659CA68
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjKrB8HP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD9DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696945028;
	bh=lhLhYA2fbkPaoy3xYl7EXhm2NJqeuyQkACPxbnwWDa0=;
	h=To:Subject:From:Date:From;
	b=JjKrB8HPdoDFuxjaMY82xxN4xA6h5UVDk0TYK+s3QWUar+XQnmj1gCSAnXidiTGn7
	 FTZVHpTOG/O+74D12Gy+3TLsoNRfoZ6eNrWSyB25YEiBrGDKtxcQOjhMkK3k+bVOGw
	 25q0bw6el3VQExYG29eqoi6YHZMHzSa/Bx457/P4QkwHimCKr/f8dTNe+8EOg+ReW9
	 AYzRVjr6WahVE55eUx3j6+pq3Z64Pdjn1WKU7UhYkE06Tam1r6QaDnnrXiLxdJkIYh
	 ljaQXfwGLybIHex5Pgr2mt1LNDd4f34+fn1TKFUX/W5eI+DLSrmkP2lhNTpJQDFllJ
	 nM/W+NHJbuMCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBA4CD80D0
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 13:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169694502869.4184.1336307988442415462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48198219f35eb3deca89a89a368d81ff659f076d27ccdb95c716b5654b19381
Date: Tue, 10 Oct 2023 13:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696945028
