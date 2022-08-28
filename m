Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94CB3214
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E6CFC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661695852;
	bh=07ltJprwcKQRMpIHmXvuFwgdoriXwV6emcMEh03uElo=;
	h=To:Subject:From:Date:From;
	b=cl/r7aO6vF/0E18pikheC+UKhT8A/BZCkZ2dm2yQL+do1oWK3WILF4LxeIqCE3yJw
	 REs4tqS7Hlx2XavTWbMFzLnOsGHyTrYPtDvVfyxn6OkYtb4UIAR/odyJC4UbBBJFwO
	 2k63mEPp+uNSQDkIWVwc/eo4sQMTVp/MpdrdYj66UpefHNsrS+6kbtGLc/LtY9E5Oh
	 qRlIBMGg02S0NBn7Q3THWngN+ca+ldHo/8Y1VULnFo/b/19eoW9Db9rRewESCUDKlB
	 T2ySWbw7iNDsy7lR0wBPjdwtJQGo+6I+PJmT7BI0z9kEzmrOIyDT9q9R7Ib4DjWJRA
	 VSqrbqC/UIhlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53C90ECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 14:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169585231.29407.2281827728106400199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c76866a9803bdb6604f429928bd9e518788f246951715939403984ee943845c
Date: Sun, 28 Aug 2022 14:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661695852
