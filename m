Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0624531597
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ty4BViJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F1CFC433C8
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700951296;
	bh=BwH1QxHZ6JwPwaNN+zUlOymsBRR1deJ/rk12JMOvcgE=;
	h=To:Subject:From:Date:From;
	b=Ty4BViJ0nac9C7+VVKkNCS6fItLb3nMhNxWs56lD/oQXjO5ChkoZJ1iD0kLc8BG2F
	 1/u+LT7vA089ElnOZWX4JOdX5byROC6EQDNEGtH23fq0cK/ZOdM9PPwgXkdFIdgQ5J
	 oxL2rwJcon56n2pEmq4F4+pnPrfi4Ba7QeCkaiS+M/dBQW6hiu70O7TRsjwXUUXQXG
	 UB/JgzUYx7BeZgC8U3leFjiwB7p66m4/v0P12qjwK+kh83gvY2oCsJILC0YWM8pBmP
	 SXMbfihIw4noxrsXvFFW9ixbLvv0N8R8VMeUO2zkszXY+AAkoE554ZS+Jx+Wc2DqV6
	 9ZMW34iP9cr8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F70C4167B
	for <ddprobe@lists.linux.dev>; Sat, 25 Nov 2023 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170095129639.7370.11077223774056534817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3c4e4479ebf4ae80137b9fe9f1dfa10e3fe0b7f45ad934bd17d36d407c1cb5
Date: Sat, 25 Nov 2023 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700951296
