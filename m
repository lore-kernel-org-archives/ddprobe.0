Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD9911864
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72840C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668406254;
	bh=96m7i98jlWcX25fKtMLSHZG3DYHtwWL2X7ePCni1WmE=;
	h=To:Subject:From:Date:From;
	b=Ac40lQEwQz8wbfUNAZRPq+x1PvwmWPskjhl1dUvyH0IDGx6ivypa5uIB7UIwz8WmH
	 8L2ndpaUgnKu4SZ0ETjAYy4Kxps2t2NWqXGBK/lC5CZkzh3zvrWPECYJYhWW6lebfE
	 6UoM8VOW4qUSG2rf4gLPZgeL5yEAnY6QkhETZR8xSqxzPJw7DP+JaLu1hBL/6ueEdJ
	 FvJhHwnCvHTdZhfrw9iFSqr7/KODC1sBBqN/3MCw9feCkfgblfdrX3FEtwGeIiqM73
	 GqkXDyukV4uCGcBJgX6G6qngi3hOXDfy8r0SaGKre8xq8fqIJLYVgFsTRL8hGmrhin
	 eoi6efyNiXp3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEABC433FE
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166840625436.5071.18191381748435816799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc18c7275a18558896738df371e1ae92aec0aa49b67aba415a122e29a1cbea40
Date: Mon, 14 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668406254
