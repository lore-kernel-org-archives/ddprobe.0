Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156B230D1E
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FgPmU9Fa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8166CC433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700565496;
	bh=9AL2o9HAJaFKi9BhHSTKVo8KJSiS7cxXGWmVP6vZs6w=;
	h=To:Subject:From:Date:From;
	b=FgPmU9FauA23thFbkezz06Me9d/17WM3ohDVbho4uF1OOYpc70QJkQySsIeeOTOVA
	 yWpQ5p5tevL45G3Jmu40ZTsSiYKMV3k5YOF0f5HkMLOuMd+oEJd8ddfSGnKL0Mtong
	 jrZKn5KX6I1AiR6/OvSE2arjpQWL2tz5NSGOmCYfvHqoAoq+hFXL683Bh3IqQxvpNc
	 iGkeY8+yar9iihU6s5g2SUGNgdrk5oTkhtBySA0y+PTikYH/6WZ570BwQMUcU1U+wA
	 pIxVmwtXnXlk+PTqhIj/rQmJtoPw4vDAnVYWdDqghPoHCV/BkyYk/u5UxDcw7apbg8
	 d54TmrtfYBXLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 643C3C61D92
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170056549639.15874.7085575237123021838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 524ce6959a0082f86474cf23537a587b770f40866552f03b85950908ebc51a69
Date: Tue, 21 Nov 2023 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700565496
