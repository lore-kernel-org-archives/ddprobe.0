Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C97263C9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3454C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688720228;
	bh=caOotQ4xR5BPnUUgyIggMKrc3vh7n5B8pBA7Egpl3fU=;
	h=To:Subject:From:Date:From;
	b=bj01Ikt/XX33nJ7p8A9Sx3zKYV90Uk0Jqnxgg1h0YS9wJdMP3pHj8Q2A8EKhZkNVZ
	 bGC7I5Z/agCpZVIQ09NlIkVYJSxQm5gDkd3VMqUALFCy9J6aBtje+WbZy47S/UBVEC
	 U2jRZnO7XDpQhn1alKssdPmYLLy14vKxYME8FPhZfz1x542RX8J39trS0y0HJ7YiPp
	 EUMi33nCNOMkMc4Tc4oJOmgC+Q9AfYCyJSccXlEPK+e+ffb2a7E8SUbQ4tBBgNIS3+
	 SMhqStiTCMcwnOEJFy/siQhT67qIuupRpZZTJnzeoUoj9Rx0s/6vrut5ZA2AWy5vi7
	 1FOa3PtZ1D9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA352EB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 08:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168872022868.31713.13636117479958163504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93ec9bd1c66d4c0a73a9088742e0f3ea2b2f005491941de52a439433e7ec847b
Date: Fri, 07 Jul 2023 08:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688720228
