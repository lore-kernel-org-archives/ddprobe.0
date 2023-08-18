Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E45E4693
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC2F3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692378848;
	bh=FnKAwFKY19syKQjITHFRnjUlehoVEhe9GF77eu9W08M=;
	h=To:Subject:From:Date:From;
	b=XlHWPIFxgK2i5Frribrso+REDHs4MERm1jXomWAETAXY4Xk8mHiXdiGppIIk2Q+ZO
	 CMuneUPBP4Uw5vwstgpoR7L2BkDjFyHCOs+308PTMElG524b5WSQO6HyatqtTTqijI
	 +Vc9WuHVkVhpM0jR2bDBHOY6dz1jeKLM2OwbBtk+X3zF0rsfH3zFfndEWAA7q3end8
	 2U9HYOaneKWH9B/v6egZE8f13hfZf8KEWRKX75fqPjx2iOU4uwT0OpppPuwvgosZ7s
	 UaYctYf09X0UaDod9O1+Z/lQ8hj2kSD1XYDIGpBzrPDQ97Bn/XLYIpw+FBLEjVrZW0
	 /QIQdP4GOMLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B125AEE4982
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 17:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169237884871.29972.16646049481705663048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3616fbac272a19315a6d9139a5dc0c12709a1f143a01e9080aef0f5640f61788
Date: Fri, 18 Aug 2023 17:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692378848
