Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AE5A20
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 00:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E419EC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 00:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677112445;
	bh=aUYSUXswQniHVPoD948RtTYmV+AzOho3Y9AnhmuyEMA=;
	h=To:Subject:From:Date:From;
	b=liAfPcTWeVjhl9mvny42x5rTBZD8935ALIds5uREHLrOVqaJoXS2xNkB82xWsCuSw
	 dj48PsnC35prwhKTBUEF9l0ZY4JKatREu2HxyKx/awo2ggSOKcGO+3ZfSY1kZ+Cq63
	 BBHAJxKjGAJnnJ/aif2dwtROkICqYPqXjAhvywqprSWreevT4V7ZzDZ9GBfiqT81b6
	 YE2+GrFTNiV7DnUqwEYqNcnwBtXHylKAhRz71aqe0Jq80ePw1WWoRgLLwgfmLMuKLo
	 AqsjlEk9h0/x7PYo39zGm/+b6ALA/9yX/qPrA505MCkg3z+F3shauYdRvsNKGmUug5
	 Vq8EiQ9mRpzkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C364BC636D6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 00:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167711244578.30502.14235578554065983035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aad1b9cb8264c71bc087f4d9d583d4a577df4040a4f68b4cba4e23bac80aa1cf
Date: Thu, 23 Feb 2023 00:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677112445
