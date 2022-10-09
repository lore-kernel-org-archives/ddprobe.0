Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE11310F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FEAC433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665291053;
	bh=Qo/yyCoFCzq9nkfIBv+iJ3vV67+zTb3iKGhl1CHVnDg=;
	h=To:Subject:From:Date:From;
	b=gKZf4RhanOn3v2zitppefIiVQUpbFad4+TlyoHd9gpNcOKNxLE7ro1rY4IoyzP1NO
	 5XDX2SCDsK53C6I/tX4uuIIjZM6Mk3xz32Wp0BaKNrclWtB9hKjA/uY16z/cLdlMOQ
	 0TQWe9M1r/CmC5NB1moD0U+XWDG3VrIKPc5mNoyzVgUrK3kBdKLqWc5P6bk7b3VaOS
	 cqC1GUDN3N0RLrBvAfSfORu+/hgGXZsgbMRguJnyAWztR5RFF3NbwyMN0oozohfksA
	 ABQ5wdPtwyopPDC9gWYVw44dQ7s6jYmDvPxhiyFa8JJA+O1pzG5nd8T5ikMwIuc/nm
	 l2lhiG/97ee2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58BACC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166529105332.11934.16639323628342390685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: daa2d57059e0bfba19ebaea2841c4ceecae2185f80413a6f64a5612ce0b1948f
Date: Sun, 09 Oct 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665291053
