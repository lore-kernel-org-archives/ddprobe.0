Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4C2436A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66ADEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661829652;
	bh=HxHI9Ap7qiz2t+Xqh1cnr2XV+/0yAIFPfhj0GF9aGyI=;
	h=To:Subject:From:Date:From;
	b=DrD61aeglnK5uZ/0/5Bm7flj3VzWehHuqMd/mMg52PE4dPGS4Aqrjo4bbukQ9j/il
	 tGQ3bjaFGqVv4Q5Oh8tG58kg9lm29siFNPramfToRv7NUUtTSQWTgJFv9sEDnYaXIw
	 76xEsNIVFSX3umMaQiscrSjextcRkPwqj9BskRa/IR2Bf0R1lm6Buss3GiB5Jds7cw
	 uiHpbZ+Nd7iyWCT2UoA7W3KlIKI50gcfBZN9eWjWSdBWHAf0uU6kjJLhXBr7DObIen
	 +Kwigd88TME/giBmYzYfD+NsvpKm0+5rXn7gs19SUssnvDxA7QOxBSf3hkkiuPjLiz
	 6mUjffLb6pSKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51198ECAAD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 03:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182965232.29457.7929299546799621428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87b6704c02060e9435b9b416b621567b4366ac1b644730e664bb946ae03c57e
Date: Tue, 30 Aug 2022 03:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661829652
