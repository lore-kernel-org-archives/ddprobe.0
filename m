Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B37C23026C
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744892994; cv=none; b=ZprhOdyvJ9uFvWK9n2XTOrfpH+NMoVTdofd0XioFnvn585xvtnAFLhIWuu2IVS7dgSmWFUzwV8TcVcxEKeEEyZcPHqdiehv2nZUOOhek2TjfvksImdWvdl6xGaF/mazHPR01GgDXzUmJt1yVqPQvW0yZwKqhCk59IL0oc//Vt0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744892994; c=relaxed/simple;
	bh=0TiYT8KkE8Nwjj3gKku5iCRJfApR7hg1bUc6JOOFuJc=;
	h=To:Subject:From:Message-Id:Date; b=h/mU0YMgjCYS1yuocXNkV+uly6rXDOsvETLFvwA5RiZ28Nej4OT8IjM/qmuRvQEHH9HF1onOhdW9+A5+Ymnm0NUH8kWGryW9WzktnOjKUlN4dC46p7GGASb04AF/R98KnoLpALCqUbOpBT1A4ZUH6bEalcdYw/fOlhTuemHCP0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCGUZVu4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCGUZVu4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10ACC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744892993;
	bh=0TiYT8KkE8Nwjj3gKku5iCRJfApR7hg1bUc6JOOFuJc=;
	h=To:Subject:From:Date:From;
	b=bCGUZVu4kkfoSG+0BqfE9Co5bihkjMcYiZAaX48H4YCw2tXmdlCG1Fol+tKxbqe6Q
	 aI1CBTdiT/j9aGmnUf6AMVrvMqD/HicF1QjZ/kZV8M1dJqPFKZgVcqaBGKvoQSb3Fo
	 byjQK9YGoHBpshcBxFHXOBEFemnnPCFQNFSZf23t94C5Ye1Aj1VXZSjiAu2MqIi7l+
	 XelRn2+bIv3ToMxQMTSj5KO8qSYW5lmbHIM7f9rWGoyDVuQ8wDC8sUUbD60pkK6OR3
	 odjPfUqsw2z22z0lI/XGqhFzGV9STNxnvhAvpwUQHjpXK9U/bLBMInwa8UycsPGoNr
	 ENqPw4PlTy2tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE11C369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174489299358.15790.5811180598501456724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988c1fed90ad835e33cc380695cd4c198411eb00131202f4b782c84959d46362
Date: Thu, 17 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744892993
