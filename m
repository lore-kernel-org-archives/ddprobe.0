Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C5F21A434
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788024034; cv=none; b=gUvKtvRD6iasP+/94EDx+7YHNZs7Msy0ce+iE2X/nNHFcaEt2MqEhpjkxSO4pf8Rgy1D17SPG/mU5vOCinI0NC56RnevCQ4oDsbSAlKRUooFr2+5AuqM9xclgKB72pjXFYCn+pXMLHu2GD5JzynUm2g54TheH75TgVJks2f+8sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788024034; c=relaxed/simple;
	bh=1wqfEWUVllm1PI4VnqoFUXgCe8zrb/OtSY8pyhmBkuU=;
	h=To:Subject:From:Message-Id:Date; b=kv85esqn11mSDzJSFcX+Rr0TZUoKcqD+015gVG2/idKIrn6OZP+gdXg6Yj+UfFFlpdy9wvH/uMYN9iYtuAl3k7fRvnaWfr5DEHnEzf3gPAOG9YmxwyOH5Usc5Euadr+6CtHVhJEhMqBYVWEjDVwfskUKUY+4gzQ4iaZs9dkKo1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=orZjFjOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="orZjFjOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F03C2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788024033;
	bh=1wqfEWUVllm1PI4VnqoFUXgCe8zrb/OtSY8pyhmBkuU=;
	h=To:Subject:From:Date:From;
	b=orZjFjOwvghL+//P15MBSnN+K3DPXwyV/6pVpmNkPLNxbPLOVIcF0QtcpoafaEul5
	 zW6XmoAyeF5t5nfJx+bNbzy+WSoUFRYdL7scGWiYgDwPeoGuXdDfARLMNXPDMGJIsV
	 pcJ8ke5JMcUyxv0M0qSzndN7LqmPYIIK/cQBqXDJ3Ovgmrl1fZ9wuw3rADLn/mY0za
	 ChmdTqYqJRGvik7OaQoezKsPNeNzA/ilJH5ART2MNpIi0SL799+SsKC2sd0BYthRT1
	 FTZSnrZvaSrfsEcqAR3/n8yrcRSyPUdqLtldd2VHCxT7Q27wX5TuVa3PZBQ+QukmnW
	 PKLsJHJez8PGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD21C61DD6
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802403368.2792.15867021254747134218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d61ee5e6488f54561ca2d2fbbb7d845752da2926a4bc54becf9dcd36b62d8f
Date: Sat, 29 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788024033
