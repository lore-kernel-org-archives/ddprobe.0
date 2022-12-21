Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE799320C
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CE08C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671654087;
	bh=OF5jWViJcDrQj5gUR8mhNjyvvnaX+cCMjnM4b+lXTNE=;
	h=To:Subject:From:Date:From;
	b=TCvggX7x5cRQfB3Jp7bUU/VVz8G3N3/oskX8ukLDUSmhi0TY2EQu5Jc2I9jDmzYbW
	 UTv6euioM0QXYNcQ8PGb0cOmUWHV1GCJU8ub8AhPfRc5SJUfTJ7kbsrCUyiadJeDkp
	 5UsaYsONYrplNgnDWF0zDFY7eaNxw21EcEJ7ORiYqkzfmdA/4g99Ff+GlDBIRzodUv
	 gB++aQOj8rZbhl3HOEzxmyDH/eI5Y7IKfFWfLUC+KZVHp6yf2rYOFQHpUmB0csyMa7
	 nOrNF4goOqFwCgIICZLKCblSZ5/Q+S/JFX6DjSEI9PjuriJ/BrcHoev0brHLHZF6sW
	 Ygx6WzuuOb+gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CFB2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 20:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167165408741.29892.17857365786942297514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bea31bcaf23b89a8d32e9367c75fe05176637d089d8f010f1065aa96ea1ac66c
Date: Wed, 21 Dec 2022 20:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671654087
