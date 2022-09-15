Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A98454683
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66808C433D6
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663248653;
	bh=55CIKl03Ycfk8dwVbt3zfmskcMu7Yo78FQVCjfQ9AsM=;
	h=To:Subject:From:Date:From;
	b=ivNE+hyS7Cfw0rKSNxp/z1XcEaa84J3nscsnk9GRXeAhunTdPv27ySqLKJnmm9bRO
	 IlxYAyix75vYViqQY0u840yRVK9nY9LcfzvuusE8TcIdjePd6fGoj9FiQur23sl4fE
	 eWiMB7kY0m3RzsRy4wSEXtXGnl0gOERQqj5kwi7C9SBgaej2gyxlEyJlJRnNDQmz7C
	 Cf3tMqQxYs9fB2uoYCvSqB1PBdZA55Z2uQsnDJCqo1oiSL+2lv7zpVr6adnOCo4rcA
	 syRGC/IXTZ4xfb7h5Nf0m6oStJ1kb6Q5fZs1rTqr19H0OlHsVD8hLKbJQQpqV/vGK8
	 JWGRCc7+ABbNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 516B3ECAAD3
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166324865332.6662.10470822785150966847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3ad8139af7fdeaed12e47f70a7c226eb24225335688a4482686a7f79b1a9e6e
Date: Thu, 15 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663248653
