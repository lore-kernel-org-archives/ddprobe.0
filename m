Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136942BD0B
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769323434; cv=none; b=SUCXR7gF4vVaEWIW6y4klxiWKEM+3lPnlTfJuj2/eegjIP1bX0qD3Q8KcVGL1TMbDNxW5FiSO7knl9lAX4ZOnPvcYDkgCGvdsIzX3IUyIjYMWYIR9SXfogp8D5/MM61uFEHuyH8PfDcjRqet2+FVwWJldXdGnUHJGCDsTRMY6zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769323434; c=relaxed/simple;
	bh=ykpTpLJB3gNmeFHUIw+fuT5MRQlZC5kdaOac7JF9zL8=;
	h=To:Subject:From:Message-Id:Date; b=vEF+HMpD9P6RDbS61bJbLJa12otjvnsYFRZAPs0q1MSTKgsSLRXG3p9gnwiCwT2t2vWmHm6bHix5B/dvWjS+dOEigD5iQaOYU/sx3H5rEr+SMeacine4LU1jZg4uUMHngU3a92vuNKYLMrAW14/ZfEYWQ1YjlDDO7OIkW8HzlpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO9nFvnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO9nFvnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EADC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769323433;
	bh=ykpTpLJB3gNmeFHUIw+fuT5MRQlZC5kdaOac7JF9zL8=;
	h=To:Subject:From:Date:From;
	b=EO9nFvnLbpBO92vek42TLR3PmWMSwzs9Vq9NuMRdas+grmFallpeZU6wicn90vBNg
	 mdr1m+Eo0IXzuB/xJVQmwHyQRK8z2NM95dvMlqMwIsn0k6lyXUwhBS9CNxgGuWFA3G
	 DUkme6WG73jnzC7GSQRMME/8WA20trf8RcZ4VAiERuJjKHnp4k38bSUd6pwrbF3fGh
	 j+nQ6Aipo/JE/v5eJBN+Jn1jMLSDGq8u+XcYHvVqZ1Uufvutzf4alfmq/VMBUyQ467
	 +z4qx1cRTWpwvo7TL5loRuHo16bldZlSdOS/yB2maq0jvoKiNIKIfHOowAT/d7HY3i
	 okZhdMqbM+/Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CE4E63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932343357.27238.11306679718490392385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3007aaccc83e73c66e8554414909d8e5288cd7e0806835ea69715842d66568b
Date: Sun, 25 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769323433
