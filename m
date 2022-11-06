Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26BA7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EA8C433C1
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667699454;
	bh=7iNz9vinSGB8YYKBGCFWOmRzjFQVlsFK+asvIQbofiU=;
	h=To:Subject:From:Date:From;
	b=sCo76oTkzCLqv2vUzCPubjoQxbkLTNTyN2AbACGIm68sBIk2hx0lGHJlrJ4Ln/RXD
	 VTHMhgo7ddT4slP0VAgkr6YPkvt4jalaQmZy7p1aAl2esRG790XfXUR1TnOg2tZFfl
	 /RyhZOingNjVOckjo72OEUQ4eGq3n9XeGu3hcMmiz3hUyQvT0rXIMnd31HX7DtJUuA
	 CTWD0EIZ4+FMV5HQ6Y62RU3mDE9axLiQdWZ5MFP7zam2GlGC3jLLgTyVLZBpHa7uL9
	 Cc51PRDCd7bHun5fDTQ2x5IP4pzKhIZ0CaUQGiSxdo4M9eRjdRsYM8bJ6p3XMwTL+v
	 JoEGcCKYW6bTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CC67C433FE
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166769945434.30730.6218865898505993325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ca9429bc2bc989883ff1fd3d0f9c1680a9b67478b04dc8cb32cb3d62fb6140c
Date: Sun, 06 Nov 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667699454
