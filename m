Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD59B1EE03B
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742947193; cv=none; b=QUoX46e5G3vFxXu+1PtfbLg+QjwvYRiYxIZmSkNEMfEblKSpnwUREufWxnz3XQn8OEXH0NFmM5Ai7+9oZMcfykYER+WE6C5ox66j1ZRh8oBhynb3dLAGyD69lO3N++SX7eXo7eS7J57/YFNzgh2vEOhPjmjaoL9Md/3pZNQXqCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742947193; c=relaxed/simple;
	bh=CLXy40326AwQiIcBygi4y3MyY1I17bPzOT5jKLyHHIU=;
	h=To:Subject:From:Message-Id:Date; b=QjL3nERVgxfbffYPjmNJ/sQdqwKUfVIIUsSwC+I4xK8YQ+/ot/67TrTx9eNFUrCudxuwWn+JDvjYUwADo4D16kMSe9xqi7xFInQlXLxnX5omH16/SA5BChuAmwBKVPhfI9LXiPgKmASXTqCZ1KD0vPZ5LP03A7bxMbAUO+Eh2jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pO3qFBfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pO3qFBfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC203C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742947193;
	bh=CLXy40326AwQiIcBygi4y3MyY1I17bPzOT5jKLyHHIU=;
	h=To:Subject:From:Date:From;
	b=pO3qFBfOPjmhthZsPTCRO3PQQqJk4/J2Q8zxdncrAsD4Lg6bom+jNPaYz50jEVmnF
	 qxMVgWcfR3FrM+SXRc4Q5p5N1+Cn0w9VlU+FoBQv8f8Wp710beEO7g77+QrjGEQ8s1
	 kCJ6FovqjMlJndH+s1bXt0QOeL139gIP/Ze5uOJASlVeETVSaH0T2prKdcZ9Obip6V
	 2hE7Ks8ivDw8kSnKxzW6DGh8Sy8LYjwrGNQ+axpoJCC6OwpDggCX2PGbDMMLSL7rhO
	 FkaLd3kd/fOpuDEKYKB2dHulCU2bIMAe+MZ8Cpfe1QBYJlTrlQFgAEIXav//Xhn259
	 BlLlYYKLJ2ybQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63D3C36005
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294719366.23434.7093756729473932189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac94986c55e4bfffc1f463e48d0b36bc15edb6b94b37e0c323a055ffabc7834c
Date: Tue, 25 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742947193
