Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B242577
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6926EC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662076253;
	bh=H1L97Ykd5N9W4ifUhLju7t0gtaUf93ppv/6DY7GFe/0=;
	h=To:Subject:From:Date:From;
	b=Gl0zDKCA2kmUUTGwmjQn6MxIRzVtDXmcyc3ZPPMXioSfqZGF7+rHSVNRqPnqtucO1
	 ksCi0xF5ly/5Jq5F/XHkDINOErlx61OOx4M4dzdrezK4rdPFzwCAkqCnRgQgbER8hv
	 yY/yMrVrm2haV/Vwj8Sopzn9oIcQWmvXMqR4u1F8Y2UlaiPFvXgA+kczrDomF1z8rB
	 4S6LRu1cXgXEU0Pe1G54QnEzZQs80yCT5L7qnIEkXY5L+PgrPiceaMds4yLguAnnGU
	 w7KxH8g2lhvkjCV3UeKUj0WGNQHjA6euqzfL6XB/P/tJkHlZptbUKAR197WZ7mekuB
	 LdRPuwrDvh3yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FAECECAAD3
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166207625331.9636.15453832124373387696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c45051f8bac5131cc77a249bd7477fcf2387c32d57e3cedb6ee21b0d59016bab
Date: Thu, 01 Sep 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662076253
