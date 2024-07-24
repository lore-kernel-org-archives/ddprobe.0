Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1525422EF2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721820954; cv=none; b=UH4QRqGZQ5BWc+tLbQyChcO1nA/4BzVa2pqyS43WUeqh5cwSA9usX87ENn+m0R2fSaCX4E8zFSEOHPVpaG2b2QR2/nM+EOJzmCnSX1No+mC9/utM3E516d9kQ+RwndX4qY23SyNNjG+Fb8ncWJUUSU93d9Eq5LtDrOoYxxkHN4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721820954; c=relaxed/simple;
	bh=tQD1LH0Gn8rYI7ZxFSRL9CaCHd4qK8DOTrMT3T15CxY=;
	h=To:Subject:From:Message-Id:Date; b=KfoRvVsEorJLVOFf2IBSnaTIeucpQtGHVoRDYjqzGyQQvZt6ZPJckVNy6stBVCA+ADWRNfkX5NARyejLRmqEWwItWlsInT33C85rUBuPhf5ecSu3mqJIYcwxpWCULpOtUFhuBzW/n9oQ9bP7Zvxwg4mBimNVDwrEkEIXBjBNYR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQAIEKtV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQAIEKtV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7006C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721820953;
	bh=tQD1LH0Gn8rYI7ZxFSRL9CaCHd4qK8DOTrMT3T15CxY=;
	h=To:Subject:From:Date:From;
	b=nQAIEKtVdGfwUSepjLWjRM+mAw0a/ZqZFfhKiFOKDlU8NNzTDT1z9Bn4TAS6DHvhp
	 XS7LUMevYmiTORrjxqFOKfiiGKBM/JyCeHtccDB2R8NK8+VQbjoAK4r3TkWvnUzoyL
	 H2JAk8imeP6pRZtfj9tzCm50yPlyyGsk7JYG/tgJsP3ijfWb3Q+SJlqIf+orVWDsss
	 mnhlhnIrNC2lfZVb1wI6Mbz3TxEZP1UMYjR+4EEu2+OpLQ7RU6joixfL9YrTmSSqzG
	 /crpcCi9WXXqtJxFY/IzxzbSnLcJiD0BOMPJ1fmOU359rgTQnZa4aIZi9mxDhFWJ6S
	 TmPTKHOI/V1Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96452C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172182095360.26448.2459624742681617176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180113d116c0ceecd2468cc89cc3321faec140cd8bf40328481e246b65e6e0ea
Date: Wed, 24 Jul 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721820953
