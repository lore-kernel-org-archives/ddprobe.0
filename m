Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC72D20F7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7101DC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670413254;
	bh=MgDoB6U7kH2lC8WQYwiETMzSAj1kH2ezmnnF10TOsKQ=;
	h=To:Subject:From:Date:From;
	b=IUtUp7OAzlA71z7eqw+MUu+EPe6Ut+y2MF9njQX9lYvd2+jPVgQnfLbH3dDA3YQ9l
	 k6N9Y7M/8qdi4DXL7aBfR5IqXhTmjA0qKerY68a/rU7nKPvyTj0QR0cjrW2LApX0m/
	 B+zoWyb578ydrWOZXjQShvz9S9rpTAES38QyhEBiavlXK4bagHITzGP4njC9FHKg0Z
	 lL6O5ruYOmCiwCRjFKkc7DbaVPVjN/3mzLi+8gbIkZ3nD3M3ykRaL1Wvqo7xmniNBX
	 uC5X3LZshEL0r45irJY6tTwFfY+y0l9bzwFHkjn6BDLy3Qna5fjbz55ruBN8qehhKo
	 b1WkJpu4DlzXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572FBC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167041325434.25334.17163471011942378089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72e72ff60e9363788960894962d1db808012ac7652db10d5752f69316224f585
Date: Wed, 07 Dec 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670413254
