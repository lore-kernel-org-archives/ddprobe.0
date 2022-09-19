Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A65877C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 692E1C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663603853;
	bh=RdJlafSDmUfQY3sb2wFDJ1oCRuoHjDgHSTlgBZlwJjM=;
	h=To:Subject:From:Date:From;
	b=h+tIAM3XzoeA1lyos1yIHj7GnlIF/9Uwr0mQN4Ihv2qTb9BXRWFydEFFYwOaZp9mK
	 UDfwnoQHuLHc2JpkLdHZFR9pVfQdDY18g3pqxpAhhg7vuefaViyfmE6Fjjt4ncuXJu
	 XO9bwN45WRPZ0IJWgl8qaj/6Mj2g7Y/Xhtm4h67QnmEgRwlC0dwm3vGtNCsL8eV7ju
	 XRvhTp+1e2uKhxgIR3E4bLW2c4vmC2BwsynpEFY09PFcT4A+uFWhh4ns3RDqbzqBcf
	 z1Z8wjbVStP1A9+18rpofRwXCaz3DzlMQlMTcZKIOsS+7Ib0oJCFN6C0kX5UQzsB8K
	 bLkSVSYFvl8Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FCA6ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360385331.30439.6724322920103755477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06c0c62d66c5210d58072fef4148797e279af827afca6e7a0155b1d6b3ff645
Date: Mon, 19 Sep 2022 16:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663603853
