Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1CD6FBF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJm2+9R4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77D3BC433C9
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701680296;
	bh=e9mTckosAGl3KLo7eb0Udsc1RuxHj02F6o0Qb7lsr+k=;
	h=To:Subject:From:Date:From;
	b=FJm2+9R4GrnATB5OZQffxNS9ZHZWA/6W/1pJ+nA2W+fN5+oKJTZd4OixYw4P8H7n9
	 kT76HX6BqCHhASqjrQTDhsmjo+mY6fNCAHlnhwzbHU6sUh2ltjL5oPLZkpJZBl18pg
	 Gw/S/76lySD9CXs+f07Q0cJfj4AJ0by8SReFVK1g+bFFSVuO7SHos/l7dgxevU/uhy
	 1AuKIa5eu+1Jrs+YwK9T/2dTUW51KyZF0PE39UVCN4X6Aj15oJL1n0vOBEpC7j+mNL
	 G/krqe9OroHeKEeLfJ9wtRToW4R37C0b5XUSGNEiqUFR5vhDE1XWCZoIeOzjSsDgG1
	 OIC59WoP07jGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60509C4167B
	for <ddprobe@lists.linux.dev>; Mon,  4 Dec 2023 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170168029638.4408.4569921094146827251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ba133792774677f0f716666f2b37eb0ddffb0c971bbcc05fa573870af69310
Date: Mon, 04 Dec 2023 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701680296
