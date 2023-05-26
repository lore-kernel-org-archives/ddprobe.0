Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AD729115
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 20:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2CFEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 20:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685132165;
	bh=rTZdnTi+WG616VqIIsZOLrRTM5Obk/iEoZquY3uIGdI=;
	h=To:Subject:From:Date:From;
	b=S/d79H0M9UPNpU1Tai3eLej/Oi0BE5XfiHDBRY9bdGYNwAI+qzqSYRYMdOUd1hdF/
	 MkJ6Z35oVnXNVcsKJHfMwXPHWAi/szgo1bSCuYbSFz6Bqn15j+5mfl9Zd9KtWdAs1z
	 aYvUX+0Ioa4G+sZKNKOATwzK9K/Zqon8n8G9q5t+f73q2I5Sw97IoIlnffWx7wR33k
	 11OXMnEqKOBYhKU8i6H3P8PitzgITfVu75o5kmNzawRYbmpI5BXEtABilWH1/VZhPr
	 dHwx9tSxDrUSYpwc3q9REsraaOO8nvZxFWtI+4WguYf0eqmocd7b5HuawT1R4ToC0A
	 jAvxLPMPD2Z6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFCFC77B73
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 20:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168513216575.1499.5169437485816141475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33431cbabfffea43f179eca4205fb6bd4548a47e6b4721ed264c0c5a1fcce23
Date: Fri, 26 May 2023 20:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685132165
