Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25977F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7652EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662884453;
	bh=SNqgK5Mkw53+5eV0ZS0IQZlG43FN36t4AD4UDDsOw94=;
	h=To:Subject:From:Date:From;
	b=hCCXEcXCsTi0Q9N/dNV+Ncp5gjpGUAVjRW8N66kv8yhDvnb/kJgUjqQ1PAiVqgo/K
	 o3RhEYg4sZ8f9rKM+eTdE1hMRDNRDd/WZK2E7l/oSxLHQWtAy4hvN4wFmTL+P6sOEq
	 h/hVBNxX4EEtfYXi5wVQiPg3CRrcOw0xi8tU+GUu0FI+7TApNB1XzX1uyHortYsFup
	 z9HWkqK6tThUMDBbFlzFw8/zyEBSwjlAUCWLWTshhbvpArxLH22PQgg8Eqk9UWkjBR
	 cAN4RIg/ugOegOMStbDGGJTeO8qi1+yFEgm2asHz3L/79oPkqRJd+4k6q+gQ0teBNh
	 MieBH9tEoGR2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57306ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166288445333.9669.6677937611277308232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d970ea5adf9b2c7814fcf43bfd20707437a8cdcafe540e216a208c35045ef62d
Date: Sun, 11 Sep 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662884453
