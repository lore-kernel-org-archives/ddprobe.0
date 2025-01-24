Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDF55733A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737701154; cv=none; b=q8L1J0XyzmhbJRPTSOnSRbUbvr5X2YCJ7JYhCEr/r3BJnmON8qep2YNQX6fAk/KNelPIuS8ZI6d7u9Geiz1fxk5Dkxohoerwg52swbpJpIUUfMx3zAwJkxgq2BJYA79fxoTQ3JcWpKbD6IluPzVhKU/7pzOJ1CMAlWHjQ1JVa44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737701154; c=relaxed/simple;
	bh=WxHZdGU0d1pMtu1S5TRiKzuD5RR8fI6/6o4YaML1sZk=;
	h=To:Subject:From:Message-Id:Date; b=EDRb7/Pc4GjPw2/v6+rFVMaMlNIthOzEES4EP7ZoAi8zRQ+b12MSiIajnOIn19s8kNNYrky83gmY3oKj0ZCT0HPjVjFZPo6JK112uSouMoYsr4TcLP8UmSsDBtvsQW82hFkaPTMdhrW3r9FZT6GemcZpFk5M6alkwaBqPjQJqDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nROQtsgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nROQtsgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B04D8C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737701153;
	bh=WxHZdGU0d1pMtu1S5TRiKzuD5RR8fI6/6o4YaML1sZk=;
	h=To:Subject:From:Date:From;
	b=nROQtsgPUl1KkYM5GM5XT2jXx9811DDDrGVl8FywHXSGJcYwDbYlD4JjHju1wxoMZ
	 n+5WHl4Yt0iKkbO66HojKVq2pCod8A4jdDicAWZ5HtNR+mcthysU8lDgj4E/+Fk6aV
	 N6FOwFBPbkMEkcno01uAwx8xz1z/bn8eV4xkRPkzzMTjUaZszk4MXZOAS3ACjWbX7V
	 PRjiYMCHl4cuIJOpGF5id4PWwvjW3S6jytMGslar8z6hFs4fEDYUv9pFsdhuCYbd8C
	 5BVUEIPrOjVOUP7wTapRfpUV8CPwSzjqOFqvQVi874IJiNz5QAZs+wGxJVLNZAOZui
	 3WDdR7Sf26qNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB25C02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770115362.1468.16161215023475597038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc29500c70619304fe29202cad66671f6bcc3d3532406b399e78a966d2574de2
Date: Fri, 24 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737701153
