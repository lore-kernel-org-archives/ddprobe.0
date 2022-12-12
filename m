Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A077B
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85E11C433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670832087;
	bh=RLjuVbDV5FdjId1c+nClVbZUQSF7BslN8XQw/HmxO3w=;
	h=To:Subject:From:Date:From;
	b=sEbgeWUxLWcA+xI6CoZP/9CTcXePlfVVQiGk0E3KySndr2P435aeofK+OSlQ7VlMt
	 4wgPAr4a7fFQ6vWz7KNcdFjmeNlkHnJZyKCx3NlvN5OlR0l80VV12IbHLWJ3+DnbLx
	 YIrJkRYCVhgN8d1vmxtDMrXhIiXAzmGjsPw46mRKCIejJhsxjx5cpokzWD045MP6vs
	 A2jSF6fJhm6OmP6xkw1qORJ8H5j/hVGUPQEWXOAbGjAz4eMnX7gOV9ZqKGxYygQWky
	 V9E9UpmXnvDZVFkm17LUfV/S+22csOyuRJY8lWG4x5Wvj/7dliQpQzJA+m4ZfAUPox
	 DY49dYosD3fgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D07C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167083208742.14083.12377798036169786313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a17c11ba880b128778a1f6a06a085af510160e6793853ae14f19112f2d215e21
Date: Mon, 12 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670832087
