Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229A919AD70
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753726794; cv=none; b=FyPSaiGLElj/EOJKnzFqOmLMkFYRchE5WsM8t1uoxCcqmCNmn3esKGaR3yL7OkteS4Q9TarcHwIAWV87qaxW2bm6NpBEkX2AC90RNRW6vPYMIhQNgADTD0s3L5jRpmw4Ru6x4M80Oa5RPTtqywOkjWDkk6gbSd1JZ1oMTN0pT/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753726794; c=relaxed/simple;
	bh=Lqj+9I/u0YNiV1b417gShqW5gHvUTm1JM/2F6dU6gNE=;
	h=To:Subject:From:Message-Id:Date; b=hPNA2TxU0l88n0MvIxEkbxuGL7MERJ54wZX0Alc3UBKvfiiJoBjxnjqMcNPqY3iW0d+/zKEIgIwUn7dufiplHwRhObZ3Eg3YvkrNAwQ+CieRYBx/gA9mhBHSrUP+l1VFP830tuMh06ImKDGs5Npzx5+MJeWIOdKCA1R/YC8X4V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7A6VcBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7A6VcBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F1C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753726793;
	bh=Lqj+9I/u0YNiV1b417gShqW5gHvUTm1JM/2F6dU6gNE=;
	h=To:Subject:From:Date:From;
	b=d7A6VcBa7+pRP56YWnwf4MALF0cfjz/2Uajhbrftn4dHiwI8bcz7qB3lI3NtPKsv5
	 TOqRnAxr9vsya1ulQlRnkk4LDLGDKP3dT0rNSxjjaXinSw8yU9zF2KJQ88csKyNqVU
	 5XGj71xJUcR8CI79FAD5Lc9J2gwk153piFT2s8A8MtWoq1CHMgd56wTg2fp3dWJ1bw
	 65QqivWcjCBhyAKRrGgMlZSdGFQwepMLGfdNwzLpOOHFzNL9FzyESkP48sEWCJV+5X
	 oyecSbrX+nLkR4eSIeLBxhTlit++eNYW/Wvu9qaxbMEigEy0rsUT0BfQes602SQgAe
	 8aGBtvbkmrMHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BA4C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372679358.2029.8079704875317817669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f9a18ba2d51d00e2cf9275d16758bb7415806fb79c9d22effdd37d5b10e307
Date: Mon, 28 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753726793
