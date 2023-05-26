Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF45742C1
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 10:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC84CC433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 10:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685097905;
	bh=sMU7e5WVrkKRUZlVb3+lISqSmxjC/7LMcwP45KKfA+c=;
	h=To:Subject:From:Date:From;
	b=Edk38yPNHtdZSvWtd94OKMq4e4A9JkhYeasO7mtNEeCItwan+IxyC1+Yu3adIJVcF
	 QtKIcze1UJwNuO8HGv0jSQN41xwcvBCOTAJhKMwb3TwispdeXvVkdZJtOeL0XhYVNJ
	 l9jk/LKWbeMYHC/H8KPfsag5qZALEM2VJ5vI6Hkiyx3U11Q6C/vE3iHkAT66REVUoC
	 RgQ1zzj+pChBI7PznKmMfZnOeJmo61IHJidDqZLv7YbfejN/3j4X0+f7hPTpCDgph0
	 nIDjNrtoAiL3VSx3kg6ZqDrfsvBBQPe1J0zS6pHC1JvBRfENf6Rs6yNV8AmGPZxGKl
	 qAujcp5UGelUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C068DC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 10:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168509790577.14636.7502428513817779922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7147bf66a349fe94aeaf46ac2b78c72f2709dc085779380ba819b0d45e7cfce1
Date: Fri, 26 May 2023 10:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685097905
