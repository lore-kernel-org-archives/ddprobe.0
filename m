Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A491110
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9EDC433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666786853;
	bh=wVO8EFJsslHlVSEiLoIoAZ+Oe3/4q+gdSr92Ztu6mRo=;
	h=To:Subject:From:Date:From;
	b=YYE0/RNELyntEUfNlMVkD/FpMryjg8gzupMuGHKbjt6WAK9Qo8mkD5NtJL6VVkTg/
	 bon3RbKScUMqPNPLDrP0KqnyflbfCVn4Am+jc3BmH+q2JC5j+eADDRLnMJOoFl0LZz
	 jVJgWsguuD6jlLJ7pC6D1VPrDvt7qgwbbys2tlaF9psIEadHr3Y6TwZi936/mgvh1a
	 2yBBcSM88MqFLdCkIfJDa9hQXYKQzlbfMisiXn2YT73JealfsJ2poK4n9shgrz5u7r
	 hUL/U/8QVWNtZeXduvZyCvYnSSCL4Gy3G0E0rQtpqBHVgiQVu/y6Vjg7c36wyJlQry
	 LVoqLCS8zC3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 508D1C38A2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678685332.26183.1538250883695925807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5630e562ba63b9f4637e853bbf0fc08bc186e01d2db878aa5c7592a0bd63e79
Date: Wed, 26 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666786853
