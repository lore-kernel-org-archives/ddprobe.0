Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED996145B3F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767843834; cv=none; b=BGOMMTO9fXT+mLhGIKHX/tcZlYbG72j+jcai4Dbjadq+Mkqv4rT8X3ZGS9xVbIdUXvrY3H8ed0PUkFTT/83eYt3225PfWWCOXOJa3gevrh3iyKm4Q8KU9OgXXkU4zni88i9on8Te2boVYdaMoJqyYFk+iwi2WBa1BG+gogl9Jo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767843834; c=relaxed/simple;
	bh=AiReYjY0v+97A8q8BrhSW6F4b71fva0c6dUog7KHU4w=;
	h=To:Subject:From:Message-Id:Date; b=pPha0Jk5O80APBUbq2u2Ig0ixUSTEXsGj1FzLXqT0lzCfcQn9rYpHB/SBuVVjGyr/H063pt3JFhsYEv04f9qBVwRc0kXRusOIxkqyCJYmnfRu7eoT8GOyTpTFMrjlIQTy7zLlmij6FPTeSL7bInwmqZWulKQWYswFFqzctKm1pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7Oz48Dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7Oz48Dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAE4C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767843833;
	bh=AiReYjY0v+97A8q8BrhSW6F4b71fva0c6dUog7KHU4w=;
	h=To:Subject:From:Date:From;
	b=N7Oz48Dxg0bHKLJiswMqUHDMCMBNNBS7qhlpoGTeD4nzXWY9sLxT2PWt4gvuwr8zI
	 MUDfjVvoOpyPkKKUnSI6vF6sLVik9S8q1POkOlKpFTcnwm5OKQbjLje0qReg4KMSj2
	 jEum0pQeXgWgQBkv6zhePXZMhmqnMzia8jWyGYqhx7YcDoNKJSVDhH/y4q84kf0/h1
	 WUyLSgVffO3sJq6IDn14VG5WYFUmjQnwv+/Ae5gY5NI0sFHwZ9AAHwVgpv/7JC9xhp
	 t9twj1QE+xJPMyG2Y8LImkkOUmzSFgBFvQ+MUqIt3LTj1qvlwg0oZxivKqXb0s/Qoo
	 C3zagS9RA298g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E47DD14899
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176784383357.25305.13134429731681008647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c6c183dd36b8e1504d653159233456bb39a62d117accc532c244d97e20a011
Date: Thu, 08 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767843833
