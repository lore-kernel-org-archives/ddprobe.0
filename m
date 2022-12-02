Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05B41C2B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690E3C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669974054;
	bh=Gzd54S+SN7v51zl1+UgfhLfBnupI0EbSHXFoZUnfKUU=;
	h=To:Subject:From:Date:From;
	b=a2QpU+eWhxCAA+Fw4se9fkJ6Z4BcW6QTSA8czMyCGq8tXG+dIno/ANV2TGkE6h92v
	 X5DFXm7tibgwdKOuPoT11M+oTLzUaviLgL2E6/bQJWGntGYz9qGIPIN672CiGn7cN/
	 l1E0ivZ0hI+Vgfyk3HGX6m4P3KvREeVEOArV73+7nR2xmelamOBJKYo0RAzx/p8v+U
	 54YYvQyYsdEZz6U+ib+O3ldWKFv5J66DTKxcfbQuNr4bdYWMjtGEWfQssTunnwsPnf
	 9HwelBN9YKPRFAX6aeqMR/+KaRP6KA1i7zFDWzJpyJebAf/m1y3qxAVaD65NS/FIW9
	 nrGJpzMAntbZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 510A3C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997405432.6458.9303424797048431203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6d35594e9ae83bed45c1fd896dc694b2d33ef34c59d8af7ad0bed091332c33
Date: Fri, 02 Dec 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669974054
