Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F21A55
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8820DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673800287;
	bh=dY6I4zej6xHpV4hAdEgL4rDoh0B9B8hIJvpEFJiglKI=;
	h=To:Subject:From:Date:From;
	b=gusZ7DfEK+naLLaz7QaStRGmO3wZuNDW+oWwjrDrKwhGhzJx64mXJt4vx0NqI7xsQ
	 gocfKzq+/oe2ym+GjJAxX17n8hyyuMJWxZ9ClIadnCFM1dbUPqk5ULm6J1Ly0sS+XW
	 zPgREs1/VMBP6rzhBNBu8vINTHO/Ql3RIIocW8IV+fSwH7DkYqYHyUX2qKdf20XYP4
	 Xllh0BilAxnhNlz8qEKq6JsWZd3xQ/EFVgKea7j0cjz/OsqmVaU46KiqLCB7mGug3O
	 9n0Od8CpKdKWIzc7nu5MOya28v0PS8twRZ8x7+Lu/GZaIKXqW1iv0nGEIFCiVnyLPP
	 pNPn3YRN/X6Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DDD1C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167380028743.7168.17923924878722988447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48982f1d158b64e76a74c78b722c1e3f38a4a1f2ecfced4735c496a54d8b415e
Date: Sun, 15 Jan 2023 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673800287
