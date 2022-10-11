Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB7A3C32
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7598DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665507053;
	bh=GhzFybsLwfx9DnHJkHaYsXyKZ+/AGMOsk1HLFSAKAFU=;
	h=To:Subject:From:Date:From;
	b=a80wNq98yJAiHbGwWYnysg4Qkkp5BQ4gB8KEkd/Ide1QL0Ut9IvDv2PBqCjZGFN0c
	 0iODlJl72vvKQP3Dn+GJNBxFzAfUlGtQBsqa2MXFf5U0d37iEN9ZVv+nb/WcDXG07f
	 EIqtKSsgjcPY0HPlGBKqKnlGAnGt4B9clBLyD5ivXztCA2PZdmSlkAH6hC4ol1V6DN
	 Y9sSncKKZdwsDA7tmDE+QYmit6L2l5HxCrtOtSzovPBQMS+R3laqU5oDDGyBIop6Pa
	 QOicLYmYYS0kWboFTTBC0jyAtxZbXPAMLN4E5/sqokOVkuSx1ph/7QZcSpu4mYyT0E
	 Mx1/MuFPSCHOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B015C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 16:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166550705335.28444.7190729670758916778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d07b65090c69f9b5d33db118b9bb41fb59c283ddbefcede31e3e215573f9a5f
Date: Tue, 11 Oct 2022 16:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665507053
