Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E781CCAF
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 13:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6662C433C7
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 13:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691845388;
	bh=iFEIhzeS/VLNHAQz3827kcjHRt2eJ9VdKMjO/Fm0Fqk=;
	h=To:Subject:From:Date:From;
	b=XKaT9WTtm0M8Jaf3Q5IGbJAzyFdWsd+TL9Jya9fVdDc855qMpQQrhx0yMG7sGlr2o
	 lb5rBNQxr4SAvkLXSUn5avUO07pzKt/1mJHIJF1S8r92RWLcuxIzOOcEuT8QHt/QKP
	 E9TFQoAks5jwjQ9ePvS0NiwvZVBE8hE91et/hcr06637k6JMkI/0kguHZINyq59EDI
	 /Qp3OCxMeYj+S2MZPz3p0QQ2yK0uWmdhL8Ib9wwLR0T2Rj9wJCE18aLjb1qUWa6eGk
	 qLqRdy24BnR4FItV7ejv6sQ2bJsL2VfJA+Z7LCxhTlX/3zHmYjEvg7qZDCGorl1oqI
	 8aEHDlyPfwozg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA967C0015E
	for <ddprobe@lists.linux.dev>; Sat, 12 Aug 2023 13:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169184538869.8884.5896392397239636746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036e78175831815d5a5e63665c3a02128620ce36d38976ac1399a08ce21f707c
Date: Sat, 12 Aug 2023 13:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691845388
