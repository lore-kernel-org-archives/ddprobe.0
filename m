Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E01C156DB
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1599C433C8
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692199388;
	bh=kqPNqbRGIaGZeete4PGXQYfk5xVZ3SLVMkzUwExsfKA=;
	h=To:Subject:From:Date:From;
	b=HrhQgSfq7B3AKJFSe+mICQLnR/piEqcYemUispYZaLXyfWl0WL7DRxl2UvcEbkuI7
	 LnZNqFt81OG2zAqPO3Wx1ieEUslGUgZpmvvWG69cbWew2qsh8QZjqje2g7iMT/pRzB
	 CnnPWpjN1Hak11qgtu2sfnnLIeAQ5BUcH7MhxAIvZg9M1XK4WDMt2zggpipEfzgPCk
	 Q0wP8hqKn7TZKYnn9gky4iF94RVZz8lwPAOiYIh02lL2I/KtfsFRst2uQy07/b/B6R
	 KjKyjQ5UvqSVZLExJSJiulmu7eEMP2VDovbUFY6DzUudbhB1pIthRhvUqZ2DrBLrfI
	 S9DGBaSrtJOqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A54CAC001E0
	for <ddprobe@lists.linux.dev>; Wed, 16 Aug 2023 15:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169219938866.21352.7476140678512353867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42d80a0061175b2bf6b12f13bfd8b4e6265d7cd637856506224e8a807048587f
Date: Wed, 16 Aug 2023 15:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692199388
