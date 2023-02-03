Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA8DAD3A
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 18:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0365C433EF
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 18:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675448165;
	bh=m8al0JD50BmYG0FxF06ZWrkqyc37ckUtvXDVEjyNb5Q=;
	h=To:Subject:From:Date:From;
	b=Ccxc/S+qsOHFVHsg4AtQeFYuee/FWSkjJzOc8O0bSmCZ7S1HCaM8smNvg0Irr5tfJ
	 32m+e6uqDFSL+hiVxdZjmRwovhuPdpGroGEQkjy0lxf35k7DVor9knzDFctnX7yWAa
	 USa9nxY+b0583vkZn2Fw8hjS5l68FE00p6p7x4e1oClHuLC6zrV9EMrNogouktjyeH
	 KFVqXhbMbBsyNXgNoW/R4EiDNU4oBkrrO9dNEPTRDZIQ+Lv8fW+vP1jJA7iI87oZ/Q
	 B7T2A04EmiVXES2Y50iD5y3i08iQtAriSKy+287B3olgS3nWFNuyZL6TTd4JPRSZGq
	 J2rH8ZqjQ6d7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E5DC05027
	for <ddprobe@lists.linux.dev>; Fri,  3 Feb 2023 18:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167544816573.17272.11129972850243177152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9392b8f8a0fbbf47819d7441190e7fcd631723ac9b1108c87a5e904dd6a7a0b1
Date: Fri, 03 Feb 2023 18:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675448165
