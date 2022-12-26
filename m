Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBE2B63B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C52C433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672033887;
	bh=ekr/J33IB8npL9NR1VNbe7AD2aQVdg3e6y+Ie5s3XHo=;
	h=To:Subject:From:Date:From;
	b=I+c3ulU6dqdKpGKT9SLxNWYKH3dQ4IrXyfqb+WjJdusi0R2egLm7OMMqb29aRc7PN
	 DYzbmwYWcX6sUu10ij69qN0wRUDKQtHGYtK9R3TsmYUsJb0nHQmVy4gFoM4IBraWyV
	 M86SvjPBoAS/+JSeAHqJvZJtXlsC30dteIgnNLtC/lrcJSKyYcv1NhhVADOE3oVeI/
	 lgDAJvlpiayBA5toYfvLPmcfmk+d33PfmFOO33NllE4sUe70XI+XhvSS431i7tf6gu
	 FlehjYazAf2IGTCTFob9rjhaoW1jygD2M6hcvGEiKT8QfAd3sW+6m7bC73Z6a3rhoj
	 PFmhgsU5wVWWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6484EC4332F
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167203388740.22698.1613404513591330445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3226eee240261e5b4093bba21d648782160ffb913ae3756c6380253bba54f969
Date: Mon, 26 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672033887
