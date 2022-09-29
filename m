Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7A1833FF
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68EF5C433C1
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664483453;
	bh=uGmkRn/HxbbTxHnxBO9I1VXnxG7xcd5+ZrkxS6Cs1hQ=;
	h=To:Subject:From:Date:From;
	b=HRxByI7UVXWj8cah8aOoxXn8ef9qDbyY7XPx+cVYAG8kpb1ekxVG7GeRNbV8C0aLU
	 QoLD84l+leQGiX9452fPlYdll7HhRmF+Vw/IhtX5jATmEJZFTnupL3IN8OJ1eh0PDQ
	 XhR7OeBm2qz7k41C9RE/iOhY4oBRJpO/aS8LgjddaDQ7Lpl6ZRVGpKpC3IwwQqj7od
	 k0D3LZ/4Q4ZrKi7rLL8DhhS0AFosfZ9Fws6yHhdZEaQOv+dRRCPgVDqTPTlD/F8UA1
	 qzjuzFSQX4eRO0eqdPz0TJCVPR5CmbeFWoVjvyo5wzFZpZ2lhA600pZ2cBbbEDXREP
	 uI5/zzEk7uQLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3D4C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166448345331.18843.11253661601082738648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986e5c96d4c791060dd0874154955cedd3888985bb09f653ed7dff42ec821791
Date: Thu, 29 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664483453
