Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595C01D6DA9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745094594; cv=none; b=jnKA/vHuY0GIfPU2nb3T6L+b2i7fYtMLr82TonyCH1ss2VENYLBquqHqUxUCGqBxjTOYmHGE2shueigVwwyXhXcioMD6B27LWxr1aZUHwIo+oUsQkCWARP+rXJWn5kr/11CW5/xtiZkjuH4EGjC17B9ue+FrdYYWELPbNv+YEe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745094594; c=relaxed/simple;
	bh=X5KO8of364beOROo3kti0kXJzT5v5hdbA1Gz8tctgJk=;
	h=To:Subject:From:Message-Id:Date; b=t1ZtY32h9TifrVyo8P/h0eP4P9EnmkXYPXIxdwlbdGepYR+fdOG3pkL7+HFFnQP3ddTVEmFWZi7eIVKl0Fjuak+PUjiEfOGrnARlcxJI4S+B0k75Ibqy7uRKUuv5ICynw7WMHCK0HFajxeUEDbW2BxVovtiZp7N7zsqP2naSrXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8L9LE8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8L9LE8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDDDAC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745094593;
	bh=X5KO8of364beOROo3kti0kXJzT5v5hdbA1Gz8tctgJk=;
	h=To:Subject:From:Date:From;
	b=S8L9LE8F4bVhuTmxQcrNIV+0yt4ycvpsYtJaFpRp2hFQAQq6yiBCZ826H+2oewzqB
	 Ne1G5gaR9U7XmJiXA++nItfPY5a1UV8Av6YHSCsO+J8K/M0/Xri7pV9qXUL9/OS0Gi
	 1PeOpLAOFxhO91USzSH+CSAV/LNAYrpzxLnBeaCIEN/i3RwzB+ytTQL/K9QQklJ9a7
	 B8yOxLdkXiY/IGN6ordCu0kkCnTQK9AyNgbcM3hn6DguOlWDJL5TS2RXywEuq4PLpn
	 fx1RwmJWcvMTJVtQBJfPmp1AG1+fi1AJRDyOIqyXq/eqWbNDIfytKf8TKp+kSW+nkZ
	 L/gSwUGcwYRdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E3EC369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509459369.32016.4718161004448716770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 351ecb16fafa6458e0fabda09890fd47b7ee04021820347ee8e542b95d3414f1
Date: Sat, 19 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745094593
