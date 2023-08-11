Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A9DEC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 05:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC14CC433C8
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691731988;
	bh=oCElbzMaSFh3Aw+RkOeVHu5DtDWENRZKBtXDsyDBGbY=;
	h=To:Subject:From:Date:From;
	b=l85JBzjmV28F+K2kOYP+4ksTRWw7iBwXaILQ/K1HyZelFBZ/svlVVv31wZbtaMenX
	 UpEzYLZp7WOEKY38/zsVhsfQr1ttRvbN5oGeoabM0IRYV8muaIelbXGmDBElQs0dTD
	 EPJalnL9tTP/F/HdVQMbQWXC9WuCRH0Cqp2Uv/WPj3l9vslwrvfEK/0GG3JmzZDNe9
	 uD5EICeAQVfnX2QdSDCU1fS8LCFA7zcgLz5jUaAFo8u3aDPlFz93iFjqS2wpv+INSA
	 cHS1IVjzMesE6NpCyW5Yh7g6Gu0uIta9jpFWEWiVf/lmmi+LUutDJMJeiwU72iFvzT
	 3SKUudUbHS1NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E24EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 11 Aug 2023 05:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169173198871.20899.16860354316104334441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f0990a47ac4e18298ad969d46aea0ff3b80fca0a35143be2c9b0c36baf4a9c
Date: Fri, 11 Aug 2023 05:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691731988
