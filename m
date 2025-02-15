Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7A41A9B58
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739647736; cv=none; b=Aw74sX0n3EXfuuG1Krf8MVNKmtr3tN0LPD6UjNNIvEuZ3aMYkCLRJarYzmiH4Jvv5YFWLDxbGzE1ioSF5oynica32mHNv3wnniq6May2x1gbY+WTdL5F+g7ANNgfPv886vI4xYiz6k2TOe/rQEgTM6Z+wMZUaSbVpcfbyJNPYYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739647736; c=relaxed/simple;
	bh=yJBso8MMVohDDQKHSLjaAPmZTcgaDfow57yZLeQgG+I=;
	h=To:Subject:From:Message-Id:Date; b=NODcg3lyTDJHOVfmShLUK/Jo1XKfKE9U2UfFomDDjTlEa68i1ZyGljdGw2KVZ6XfXt8j2kE8889PsRXvGFKJ1nFM8z/y59Qid1ZLRBmG99Ls10azmpofRQ6iiKQgMUsgaXpTAsUgZP+a+gJymNF4qiZZg/mSMEnL66B4HfXpKc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Edht1jqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Edht1jqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3688C4CEDF
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739647733;
	bh=yJBso8MMVohDDQKHSLjaAPmZTcgaDfow57yZLeQgG+I=;
	h=To:Subject:From:Date:From;
	b=Edht1jqz9Ypo/X4f1kM4KKx41NTfAQ7Ol0VUShy2hNvbmUP0AkmZ2VYwAsjq7HIQL
	 xPeAKfzD9y5E6JGT4NnMseXv9k8GR5OiurLwuuNk47i8ujhqG0ScVp27ELZNCgRz14
	 gLwNb9vnUkQrsQBE6yBz1VtFxnZpfuLyxutWaOIxfYhbpT/vETo2va6x0qPzllxbgV
	 y6bGxXPTfAEYdebaRWrP2i+hjjJ4ZvAL7xSmU3gD1EtoZsCosBjY+N98xOsMVZ3Afv
	 s8tqJDNnHVK/IV88X+br6NgJ6IwOuLRwrztH3cFAMGBmSMZ0PH3/n8FdrQpmXcyOzE
	 StfiBdDOXKiCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3208C021A0
	for <ddprobe@lists.linux.dev>; Sat, 15 Feb 2025 19:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173964773368.10039.3889714516784988733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfa55b6dd4b70f272f9460a73cb4ae75ccb6b90ebfa77a6ed27c97d7a0a192a
Date: Sat, 15 Feb 2025 19:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739647733
