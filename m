Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E7D1ADC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 19:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC539C433C7
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692472448;
	bh=BmriZFT5nHR+fkSyI7LucFftI6kcVct26qgZIr7JHgU=;
	h=To:Subject:From:Date:From;
	b=eSN5klyixHjC44uXuPjTV5aot+ezLFMz29gqB3vDFDVZYLBk6IevAGFjQ0teqc5px
	 I9+aEDR9w7tZlpI6k207YcBd2xW9CHO6c0+2sPIBwpgNiFpflbdOAJp6lvayNdHgXc
	 SmKzpLQdN4vF9buwSvB1J6MyODna/JM+wq22Nl13oLGxHXDMZENjKyR0plGf8DcnIi
	 KTfgV6Ki6oLb5gzfFs8HytAIZJgk7DYxlfFlnaIDxTcKREZAyJpyssV2zJgF7nTJQG
	 TAMLHyjg1GZofyjK68ZDGr0R2stl8e+HQjgRV/7CpnlL5qjL2qTAZQa9af+iwB2H0M
	 udvDXMdDF7wGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FCEEE49A6
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 19:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169247244872.13709.1665994265225334312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd972eb3e5267374dc4493cf4d2c08c355340ebe8b0d7b055caa0d15bcf066cd
Date: Sat, 19 Aug 2023 19:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692472448
