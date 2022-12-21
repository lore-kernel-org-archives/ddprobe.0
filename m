Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E09B11FB3
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99DC9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671606087;
	bh=Kv83tE7LFWZ8YjfMqVYQN0ylj+kzYmdams/dYi/9FSo=;
	h=To:Subject:From:Date:From;
	b=aZp3bfYU5dxr7Fp4Xn9bbMtPKJRsDQWnu+d3FA8FtxiUe/kaH9crRKPl0JB+UUyZI
	 lHnBk9j4V/bIKGKJiq+nlZfR6euJj0rdQVPWPZ4BF/hg4Ra4AdRojv108bhUF8HV8n
	 41RSI4U9buf3vnQjj1zxpB7hbUpkazEYDhRH0eDjJoU6DvnKYgWrgGeywMO4FZrrq3
	 yPBsSZ30LEWLZH05hgoeNJ9R5zigQYFYJucosNpocCFhtiteZVDNju5lPDMLOmxeba
	 sABs1sXF3cxfohZHCSin++bYsg4hv1oJ7RuWx4SFp8nJIZTKM48GAxM8e/EumenryQ
	 mOzu5e7NNaOmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79F88C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 07:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160608747.28725.11583670087570140505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9326007cc74c35f4ba9ce51571ad9a177c36199b9e7cf013253cba8806abb349
Date: Wed, 21 Dec 2022 07:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671606087
