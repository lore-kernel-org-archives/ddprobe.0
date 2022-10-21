Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D015F7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F427C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666348853;
	bh=qWzvp93/Nxg82v6vFcTOwo+d6R4D8UyUne8xVE1xyss=;
	h=To:Subject:From:Date:From;
	b=iJPp/4N1KkKhcBGolf0Q4sbBwYBg8k2A4SjXWjQ7YGzLhmiggTuij2epYt6XjVYUQ
	 H5chSxgWbPhnXQzcxjJgYHKkiHXR9/KqgjmQqhUehwlWOx+kMlYSzNGx0+RFvg2adB
	 vpxhHqfUcxh7Ezi85nAOraLoRl9UDz5liEIYPiFckW3yceaCX4GsQ+o/jRVv75lMZ5
	 nSuG5bxsLESChsw/U/SqEj6OQNh/2fzERG3CrAkZ94d92aNGqSEsm4g/7Z8UjGmW0K
	 cC/R+C/vXVjwS1sHyfwOkZvUZsKWYoEUiPC1Tt9maDtQN2w5W1KA+s5XckZ7Hrp+cj
	 nA83nUMOAbz3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 531D3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634885333.24046.10899126326089769134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a2cb527b8c5c5920d36a714582b6d19b6e676ceff9703fe0d6bedd67d975fc
Date: Fri, 21 Oct 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666348853
