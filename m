Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEF62EC3F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 21:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B1AC433C0
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 21:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686778628;
	bh=E3t2qGKx3rJDBuwvdf1RdyIqPOk6fnw5NRhQKEOs6TU=;
	h=To:Subject:From:Date:From;
	b=eDtOgTR8gStlcUHVw5Ga41AKJFnjlCFEdmYy3Q/oZCNMy6GUmVu9D4kGGqxIrbNZD
	 dTgsXJF1v5Y3IkxsbZdex5f7mp+MKZftfue72W1CwjxXbfy+YrI8/RENVmQKiW3c8D
	 vBkqyRd5FZ9quq12GPZUKlhDID7l+Bh/SKByZaCSNcnVctcFse200j2Fv29l2gr4TF
	 RPaNaXUiQUXwz8w7UcPwDIepIuDzoOi/cxTsazEWOmAPmz1ZDk85RbwZ7SLxDgVHNN
	 5N0P/JturPiKoBhhq9A9GUx38/Kx7lNF+p6qfdkTPloBVop3ETf8x1SJSoH3/BuGkc
	 mF5KfqPASH3tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B89B4EB64D8
	for <ddprobe@lists.linux.dev>; Wed, 14 Jun 2023 21:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168677862874.13950.576029655511699225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a06f44413fa4f307b430ba7253bd10a56fe84346d2d168b56b1acfb7362245
Date: Wed, 14 Jun 2023 21:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686778628
