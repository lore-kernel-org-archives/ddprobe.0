Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687E97F
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 03:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 136BFC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 03:39:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675827546;
	bh=DHmqFNmeDkzy8EAHV/MHTr1/9OtYzS4IRBsogjseTOw=;
	h=To:Subject:From:Date:From;
	b=Xpsu6rMUCTbj2tiG70c2rtBc7G+SWJyA6lYvjIwmUbg4FAUANu7aFJmP0oJzouodj
	 viMBXd0tEZloBzbf7cTMfOnW4nwb73ykJFv6Q0xhxSVouhtB72rbkAND+237r+C9er
	 p65Odajco3lnwJQlHsJAkqY902IFNiY8ajKE2fqYaJOWAEgzE2WnykvEVVSoN5id6L
	 /95uTwedwNgPRmagKelZGCOR1L5ENOZakDe6pNXyW39P/RRhNRsoIowixmxf4NY3i/
	 h6gAmcpVlHSIb+pcLovVFSIoq9eINzia7Ca4XTB5dYsAXFbbjBvKu4GR8tTOH1Or5E
	 02ZzX1GaxUaEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEAF0C05027
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 03:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167582754589.13157.17117291191414654512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0014acf7c52bb27d05eca5b546ab392bba4fada7313ec094cce4136a6853f6e
Date: Wed, 08 Feb 2023 03:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675827545
