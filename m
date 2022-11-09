Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D075920FD
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5BDC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667974254;
	bh=ijr76fpBN2Nr0+P6Gerasnd36Xqbeq3QfklSN67cSqk=;
	h=To:Subject:From:Date:From;
	b=T456Aq1Y9JYh9SUaxQzSjpTCCvMZr6UWUajGNa8s4FaVyWsrkRSFK+U7yyp1rPJ2/
	 3Zr8ds5pJJsgn1/eu+ZxsfnrGSJPdfl25+8RqoTW6lRp1LaXx2NMlvJRAOjK3hAavU
	 WqJowegnzm0PSplfCqTagbj/Eoz5Whn74TVgldeVh4D7Z3+cWopgF2+1jmR5hTEudF
	 79z6+I9dd94GuQzWbXilHvCcDPQaiuSLDK1lWbpGQ8Hm0BhwcUENKOnIVl492/HSYK
	 SXxtpNcSpcpxQQUNJZbxD6HNg4N6ThoUFA5+Q6e1W5FZsGAlsixnUpas8FWX5O4HtK
	 lEVmnGrGSH0SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BB24C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797425436.11143.14068900568847918275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b972a0012b93fb7df96625c42653e7319765d7572e13bf23531803a400b69649
Date: Wed, 09 Nov 2022 06:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667974254
