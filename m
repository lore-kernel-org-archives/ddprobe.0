Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B756FBB
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lr4bACXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D536C433C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705358896;
	bh=Y15JLC1PHxpTHFI/0Bk/HPywXJKgjw1khDIbP8rIyi4=;
	h=To:Subject:From:Date:From;
	b=lr4bACXq52TNY0HkFAhzTV/GtBDTBIbt03//JysOV+pWjUNzXVHnNZE4937zsJNIa
	 Hd3K8eorQetU5rLD+0pS5fxi+v9stZGvvLNXv0YP5JUO2+SCHERMQcFNzwOiZX64Qz
	 G5ro0mdTzm3ErRokGrC1+6krkgEAxJdnyK+8qQZTO62laxPn2B4nef1y24CVqSNUc8
	 UFf6RVgosIxpZjsIOsytM2gHTXRq9y/kxKQhUNMkaQPW5Kf5W4oAMLIUZtn89l+FRM
	 mwdy8TT7rUGVm80+MtqbPjeBhmmoUKHbSg15Ymb39G2aX4ju6KvPvS2dSPkUXT90M7
	 DCpyUZ1da9RBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E229C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 15 Jan 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170535889637.2540.14409706851093990501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351f87386e3dbf68b8eef5422ce4daf6787536b09111937f34ec5fe869778828
Date: Mon, 15 Jan 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705358896
