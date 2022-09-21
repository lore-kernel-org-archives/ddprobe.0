Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5937C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C1F6C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663732253;
	bh=OtRn5lVhtKQDIL5W2s7FiMWY1ngglOV19KRK/8JJoIM=;
	h=To:Subject:From:Date:From;
	b=DSRGAO5aK0pVE4jWJ47yy62Ml0Pc6WKKGNYSK8pT9XL40yT+rA7lIowK6mcWQHs6C
	 f3Kc8iOxLlbT3sq3zE9zGreU2PVkx3q9GKmz5co9n8S6oIxZ79u3nhS9Mtq0+BRnJk
	 KMWhQbAgrprn0ba6Ce7Z229Wk6cm/DchOiSy4vdrclWuO/0zcT1j7CrdRlXk+TmLb3
	 9gatINO8nkgtoiMTVK3zkrZvIRwbi7sldzMD4+6ysHCxBWKKssN+nxa6dh7Q302V51
	 MD22KMhPHAftKa/61NoC6Nd0fGQT1cIDWtYfVQuzPsiqBxmTZ4Gcjugxx/GKsAVta4
	 G8nArn8PGW9aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 543A0C6FA82
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 03:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166373225333.12033.12025482966980526276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23060dafbacb96a1c4fa283fb5e7686a5c7f850fbf38bc9c8d3a7ed773417c70
Date: Wed, 21 Sep 2022 03:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663732253
