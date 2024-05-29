Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AED816191E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716971663; cv=none; b=ai0/uSf+eL4bUx8v4Mf9JX7QfkiA5Urc7c9Qcrkr6XuBrKlAOtD2/kE5m0/TsGvdHZDYGxhZXjxhMvZX5X0yucVWq7x2VpvcBSwB0P/Eq4xyi/OPL3dtzJ5QJXozqApOp2hgC4DsZ38Z+HxWo7ufvytowehCxfhnB4vXVgX7P4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716971663; c=relaxed/simple;
	bh=nvehAe3k10jqDC+Kaetj6BrH19Ir3XtXTS6bfTbJXJo=;
	h=To:Subject:From:Message-Id:Date; b=RjOKpDWEX4U6B8uVDm83qjXFn7xwU+ZrIIhUILb0YcjngVf+o3ZQJtg+Cms0X9qfLNWoJ2Mbi9HFAm4hKmP4rZEcgk6/9CIcwCbpMfM4IMJ5EdRN8UP96tmlgzHVPJU6wTgqeRYkWXNJUf0G1dd2qB6Ns/mnH8zLYvM5CinW6HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXOoEKSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXOoEKSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 270D3C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716971663;
	bh=nvehAe3k10jqDC+Kaetj6BrH19Ir3XtXTS6bfTbJXJo=;
	h=To:Subject:From:Date:From;
	b=uXOoEKSXoQbtIjzK+OOKfvzbEkv8Ih4OE98KwYj67guL37/eRgf1zpyBAfMIxJZWQ
	 w9H43XygwvpPUqJ3m8lOB81lv/8bZ9OjE/zspOMC6AgOHwNFhXLpJdbsReBzGhXLU4
	 YsJxDtA6H0AovSAdterrvrb2QjpfadyFOZ29ZkiDR6evF6aDLkvF2Y1Ql7y3VfZ1M5
	 h4GSYA0Ep8gQpegRIhrdfpdtwlah6PGzUF+zfBRbYxjBCU1khUpEvgxZRgsBwtqgmW
	 aF+hWXpUivXznSmesDDvx0f5yTPTiC00RDAhugFv4F39aOEzUrbzHCOwb5SFw20Y4w
	 hX3pzdZv+DaqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77F9C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697166280.492.13911293291682503069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbdebd8b58448f08de6593df6b51669c6a83548fac3fef7d11551840003ec350
Date: Wed, 29 May 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716971662
