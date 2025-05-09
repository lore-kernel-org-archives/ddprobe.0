Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3330526E16A
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746773994; cv=none; b=mQ4K1Kna4lE34289ITJwl/7a5y8A7bGiCGeRY8Qy9FEYr5ei3+gaNoo0KyzjfsG/k/2JvkovQIt0Z96ZyWjxUd3S24Hsbcgc8wq1wKW5hf30vFoAbpArQPBrcXme28QqarsicqmqRQxEK9+xbrMhkb7Fgz4FhOb62KIsp0I27aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746773994; c=relaxed/simple;
	bh=PjGbxsRtf0m2MSLZ76y7ZVKvsFLkB+KajTGiayhrmq8=;
	h=To:Subject:From:Message-Id:Date; b=hc2gA5aSZ26jMKmWqZYMEAThRHcqEav72e6QybHjEGvR4Z0qLUheENo24JgQ+hXvjv+OpgUsfFHzDM/8NSeNgdZpyFMKKxfeWMJIRBKXLfIR2cvA7q9E/6RqtiWXb5MMyQAcxMt5T5NMRUuUL96r2Ubj8Rn4IHg4rq8K0uIFxXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dq3KtPbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dq3KtPbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D4CC4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746773993;
	bh=PjGbxsRtf0m2MSLZ76y7ZVKvsFLkB+KajTGiayhrmq8=;
	h=To:Subject:From:Date:From;
	b=dq3KtPbXRX5rFk+N3r3UKhyEnvH99B5k0sqd5ZpBEOh9QNS7tE/9ulpmgXa16vhc8
	 6j8GKCGpKj8kb4f+fdKTPQbfbJdo7kZ6GARVybTEnUwK+3cn3o6UVPAA4w/hFagpqD
	 g0LOo2KxVa/8PZ49K7OHYz6p9gBZLwkTZ/I4ObKsLO6b7quy414dhiYlsn0513jS09
	 4P+YaY2abN3/QOy9k+S3bBA54oW22q5XuIUs71Rf2vATGVvy/J5wC+5bGdGHV0i/rJ
	 cnbIWVWEGQibrPED3+DEujQ8Sj5dozxTcrGO/qMfmA4oPQ0vtyotdLKWD7RXz+3QP8
	 aBtkORdEMq2YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB8C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174677399357.9764.1762676474149149809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24c06c9a878eed0169bc9013fcee1170cc40bf1fc2bc35d9d4872c27657c36bc
Date: Fri, 09 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746773993
