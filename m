Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304524F880
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 16:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMqqsut5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97E71C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 16:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703609896;
	bh=wekGSn1EhVQi5oN2dkhnto8sQauOiHT7BRjvYKJ1H9A=;
	h=To:Subject:From:Date:From;
	b=GMqqsut5VRHF8pv/31MCSIs5d6WLCRRmUfgfORZp5+xaJ5FnTJDqVQkRwh9yPMCac
	 rgwUgBD0NPRJkLkiFaofpGR99NZiexhADqS6e1awauRlW39OzVglLOA+Gx9zfyoJMA
	 dR665RHeIHae6xHu8M7QelPsvqUCyYEujX9ONCZU6vWHgujtg7ft1CdI0A58vUAuVG
	 rXruIpX1yTjRoFMXzqsdsfy5y50JYeI6aSJWBlrUM1xe1fFRzBwkBAfWww8a52vY8o
	 5MjZAGBQs6fYfst8f9RL3uIp0TUZJzoreflGlYZBdgZ4tPvrh5y/bAcheliCTEcwVQ
	 qBn7cALPmJMog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7796DC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 16:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170360989646.8980.9532497948152829443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8230034d30d633455d90b819a167c92b8fe041452794e47e94c5b0772c28af
Date: Tue, 26 Dec 2023 16:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703609896
