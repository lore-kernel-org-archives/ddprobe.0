Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDF6AD31
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 10:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC430C433C8
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 10:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691145788;
	bh=61K7vEWkyfFRWvq2tatcp685c8E+zEgiqYf24j0Z7Lc=;
	h=To:Subject:From:Date:From;
	b=oflWRSkg0qpIYWSlPKWZrQv492idy7T4rPqy3l/M32M9a3+3cUfMAvHQ3CxNmtBpM
	 bvPuRszw+ZGVC/i/NYmxzSJB3tybOIzkVkBiBNgB3mCjmuGxlEMc0458noG4M/FyRo
	 HErPT0/RVB3wkGATNvvIpuuloVsZyedi7v/BR8udR78ZQhz6G3jHO6qdkW8R31iMHF
	 /GDNyHTOJeQC5hHrx2ryu3UklFoI4VK+/qlwQXnXG0gEpX5EPkBXcX4UYJYFyxk98M
	 tgZ/6WI8ymwPg1ZC6ukcL+4556F6oyjdi786HpNtrj0YiAiQV43OXHfnnKSRssMG6v
	 AD/RIw882mYog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE26C001DF
	for <ddprobe@lists.linux.dev>; Fri,  4 Aug 2023 10:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169114578869.7422.16508781361219500853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a145c9b1d9255ee02db23647ca7e8a38e347c95b3e6a356df33c3246a97d80ef
Date: Fri, 04 Aug 2023 10:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691145788
