Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF1BC7B
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C70AC433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668246654;
	bh=kzOA6XtbSUpkFmuuda5HOiwFpfNY57fWuwKZNCYdDiE=;
	h=To:Subject:From:Date:From;
	b=vOh2QBnBBOwTdns/6sezpod8pZG/fMufJNb6XUWhrG1LX1Lhjn1W2mK4W5Z8Z5/K/
	 keDtIJKD/cxxWBY12dp1L6GMSDdA1ImC2mGeMFcplekJB1frqIlXpF2JtvNn9t0L3F
	 HAPD7lq8lAfdSqqnLs0EU6KsztAbzuuBWCjIho9Q3OKZoUrUlQpaB8ANRNXuI5ELFD
	 C4Ym27Qb1N+opx2yjeNdmtHYw/1XmbZtt3eXrsM5bGzSFvVMfhZUBuX4UwCe7xTI0v
	 0ElE/SKw2XbayM4GGG4+n62OU9u3zrfWC+WW8rGCuvv3mz/derATaD4fY3HPDGDFCg
	 DWelmAJWx15+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5101CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 09:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166824665432.24546.10734052051717201975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8383d8150b186e3e29891c331751388dfc46b6e559b6e0ea2a70430d23919879
Date: Sat, 12 Nov 2022 09:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668246654
