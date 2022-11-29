Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0995322A
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75279C433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669726854;
	bh=6uNeTlpmVE1U0y7mn9YYKhT+I+VvFumUqZYToCiz+oE=;
	h=To:Subject:From:Date:From;
	b=HJcwf/JRZzUI+jdsWU/0LLxPulrmUXs6Hq+HH9vndGzlogAaQ06jng41IV1Xhf5KO
	 L5w/bqJDQPIVdhJjneZKyg+KMBr7TIfXOALtPsZcFwbydTWQB6K1bXVlre2Pv8ZDOE
	 jjpK783Il0BhLy/AILsTSVP8n6Db81NHmjpM2qhHtrE6wYq8L5mVvExFA7BPBeDKpV
	 dp4+2cUK/2xAzfHzJoPhUiIWOmMXEFnMKasN0adjhzVLuW9aM8E1z0jBb4OhbJ/TGI
	 w6Vh/7NLqyf6yzpKXt/3KSrD1Y69sEn8JcipTCzq46zcO/N6njtLHnpTKrW2qqnY2X
	 hqjAgWOi+2AqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57EBDC4321E
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166972685434.22460.5977090357081588576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eff17fa1d8e8ff04f585d2a5c16b14e7725cab297bdcb3884321e3c6308da00
Date: Tue, 29 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669726854
