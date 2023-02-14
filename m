Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444427C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 09:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D864CC4339B
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 09:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676366105;
	bh=jtc0MgcQBXE+J/3MqxgjOB+gwBHJ7rsSJajWt4vLSMM=;
	h=To:Subject:From:Date:From;
	b=Wm3aEYge3R0EUhkxIsa/N2zxX+giJ9UroUQlW1kR3ZwkYKwHfe3B+vzUv0cRP5TBc
	 0SEoTT2LHmaXdHmrQC7JRzhsG8RVz+TUq3JaeA+TDpENWEWPmOi8Cq57DZlg83kjpV
	 5q8mDFhkDqmmbCXGpFPVFckigKn5+sgGjJfBY/AreqzEVHJ0ET+bVY/QveQ+vXLmUh
	 WX0tDjtH7Ocy07FrEnkzjRW9nBcLyLFWZaRt+aLwT7idDQQppKVREvmrWLPMY1Xptl
	 kxij1UUJxLryRcKLVKpOJBhT2zLif2+arK0v9jhRmCByOk0qUoy6YZspHu31ZIm0Xe
	 a1zgK2r4fYLng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB5CC05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 09:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167636610576.24522.6710329250093478337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7804e836f0e9cc113021b06e0767af00ed635e4fc86fa33c4aae2c6d73deb0
Date: Tue, 14 Feb 2023 09:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676366105
