Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E85110E5
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D9CC433EF
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679359025;
	bh=4wntNmgjDO0IvNMU6RKpfe8PtNVfOo8GjvwTGR7c9uc=;
	h=To:Subject:From:Date:From;
	b=aGUFiyqjXYgMfxwiYlimgYgPLZcVD7TSG0vJYvTgvRbdjlFk9IzpOJIofAPjSzTWm
	 6rJOJ2JQcoopDnIYiMfmJBuI6TYdaTNz15jfefpvdYjanTs9iO+30pPZh7nuBck6pA
	 GCRMDp/IMV6Gh2CHHEg3wyiAmbpJOB/QTijLMHffwGb791v/+WLQ6wqFeRcYGzcBcq
	 yoIeK/RXk+EjiChtlNiNI6yjmWiagQl8L7g3C+TqO116pvS33vmhIvm8TxrRUxlgEX
	 pIwXR+gQw86LiCI679+1H+QIWkV5Cu7FXIUXi7iQ/3zaN19xYL60joqvO/6e26fFtg
	 mnpgKE5o5KlCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9065C6FD1C
	for <ddprobe@lists.linux.dev>; Tue, 21 Mar 2023 00:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167935902574.23620.12017631796023476919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e6cf3f858cf6d84fe53f353a0640b31eb6e5c3f8953a8ab0c2c86b5238f71c
Date: Tue, 21 Mar 2023 00:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679359025
