Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F5F7E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C9F5C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669596054;
	bh=62FUQlaAFBmGQkXSyHRhx7lAoXWTDT2TcDfRSMdJueo=;
	h=To:Subject:From:Date:From;
	b=DvuYTZ05AqKGF4qD4rJkN32zjb+z4gcxdry4a7U6QJX09n7CJURNQvxxlehW5f3cF
	 1rwTE9Da8ozLuqcu7fWqaTlQdWpYmkViOVQXTzM1dKJuLRPNWLXB+KLe0tqzglsAFu
	 cIG4WdEDrqws7F7txe8E9mTItOl8HNA85V7ed7CryflPmmAeR3WaW0IhsoL/T23Fgo
	 3Wlc8bB4wRZZsvSb30IG+SoyAz80VsyVj+VYDMuimx/Tvp1JUaYsutHEJDX/tjeiWQ
	 cNvC7Ym+wbZV6Nn2+Sguii4deLUkosi7HWNY2U85cpPLlKDkgNmoLkJtFwD3gsNKsV
	 fykom4PD5gFZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DFEEC4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959605436.13777.6126684013161140000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 400ff6a79e396938fcd4410ee84f8021e0f0e4efc0c8725d8fdb180f8fc653f0
Date: Mon, 28 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669596054
