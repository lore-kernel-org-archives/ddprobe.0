Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D44200138
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740425934; cv=none; b=aeWq6enF5QRruMnEg5dW1Ugx3eEEzLYlDVZaoSFQQQfnurVuUiQcaM8WZ6dCacgphEISJrqrRVi0Uo4OPM16AsOq1U4PdodrLhM/ww2OBgjOaIiOHBv3bkMeZiDSpIbVzr4hJMtJOueIA85O7SXH0xJCAcf5zy2ALpXcs/v3YmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740425934; c=relaxed/simple;
	bh=duFAy6taCBboILA12c2OpgMpzAeu9KxSViY+0ND4Vv8=;
	h=To:Subject:From:Message-Id:Date; b=YKJgCyKq0COYIz35uRGWqRC6HzWzA06MIL2FtTCdz7a7lR6oqc8W7sQ8Ixp6hn+ZTOudkSa6HwUUfJ3rnE+dDI8WVpa7KSztIBykHgjymdqB+pj/n0JIQ2xlM0foGoyTMu9vsMyBtvHjy92wHBI2CPQRY+lP014rzCQiIUHfi/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zv5o26+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zv5o26+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C4EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740425933;
	bh=duFAy6taCBboILA12c2OpgMpzAeu9KxSViY+0ND4Vv8=;
	h=To:Subject:From:Date:From;
	b=Zv5o26+PAedhjMnCiZ+9w1cmWoNvtrWmjTTQXqYIqnMMUVfFnQYcJJEeTIU3/Ewss
	 QK83AUxLTjHRopct2fw9TK0lojV9Y9ECfxJmCCnfEOWyrYsuiSYcO5wGTJbxIXsf9j
	 nHk0fMKjR3arM6z1k3mEWvrpW2doDJkvTsdywAKp+XfENX87TjwZZ8N6pVRqeySZqn
	 Wno5rNJeI3/on1YVHVt7xH4U9Rax7NKGhEavMFSv9PnQBnrPuEaCiEfqi9q/zzjC6K
	 I7OJ00SOqvY8C0J1jiQNOMgVM1pqzWYjXPUXH0qKYAGau2XfzE6cJc4OfOPOyk6BN4
	 0V8GDI7pnOuNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B38C021A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174042593358.20899.13763394668638951930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51e1950add966a5e5e455b5fa4a1849baa98d799356c6810a8a9e482a6977661
Date: Mon, 24 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740425933
