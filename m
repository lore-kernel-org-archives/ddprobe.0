Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E50061869
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA8AC433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673008887;
	bh=hSzo9AdRKgksTZL9qv3Mc4UevozBO+JT6Z+K6zgNWyc=;
	h=To:Subject:From:Date:From;
	b=jc6ZudLOnzMO4yJD+WxzNHhi0rEj6mNknFtEKrH96ymwQzRiLQOSfBb2EzQz69Gxi
	 ZUHUHC3YaIWV/QV/0c1zONgf/n986p4zgVbkX3wixS+AgEuW6OTLb7eCBGAlWxQwEx
	 9Mc9oRDno/qNJfTYZ82RsrWR6Lb9CkojRn9R26L8dw6msOme54+0Lw50fP8wmd0duz
	 tUBd/3rIkDWzGrLFt5Ktb9DvhjMkcvj911ZNXfjZj0pUIXi3tQQyQN0WlheiKZPbs/
	 iMjpEC1goQgJ3HBWq+9j5SAXRQDl7AtdeRED/az3f5bDLGzoql7J0QwPKjzdElm6WY
	 lPioXaCJt6JhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71376C3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 12:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167300888745.15794.11521709395707456760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68e1868590a4e42c01b6fb40d769123cb23602c09c9bbd20fa50b0d36a89a9a
Date: Fri, 06 Jan 2023 12:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673008887
