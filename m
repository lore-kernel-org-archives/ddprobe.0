Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88DA080A
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 04:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FB5C433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 04:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686025325;
	bh=gbX+KSS38a+Q4+t06YVlwBLqa6wIVh1DAt9/5kOZd30=;
	h=To:Subject:From:Date:From;
	b=spVUeXcMUBWKBNnkyFG7oOASy/XkG0nXBxfd99OrIy0LPHtVwiJPZ6NkHILX8+vyA
	 +z39xn8En1gtQWg71LBEqfP60q6OwYFDyVLea1/M9Mbbml0oi66KyzdB5b5ec4VUMU
	 T8sq3dBQc3KnXw6pjfKUddGJF4aCAU3zNRLWauJgkmfIqfWhXgZcNTibQsHWN+18y3
	 Gal0XnYjPljlLZwm8jzIIzgubmtqksIgWXutnix+DC9vkwuRhaa04fJjVLHKNK11+B
	 AS7whtKs92gCeIlDEgQ5PdBXZTGYuUxblS2OTTVmIwwcPS72p5EgF+m8RhUissa6/d
	 RVLTY6baQikTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8766C7EE24
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 04:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168602532574.7070.9383227638393286083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df45d7d30705c445f5f7427fc4ab1049bc1a583e47812b028ed6fb89bab64b9a
Date: Tue, 06 Jun 2023 04:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686025325
