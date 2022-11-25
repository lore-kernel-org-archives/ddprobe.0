Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE9717C6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 680FBC433D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669356054;
	bh=PifupxSs0GhXDHI16bAdABBRmWZCovuFKtgZVVVBz2E=;
	h=To:Subject:From:Date:From;
	b=uBDpuUFh6xWO2Fnybr5uSr6v2AP5oUzSXM007dV8d8yzE9AvvgJkvYAQVP+yC1dE8
	 O8VOMNVpBOBUe3G4LaRObtGqF3twpdDMPFkZl8lg+yxIJpULF9B1te3cfp9oIpCTNj
	 rWW83bMrYdhCvAfHsendhhGbQd2PZJ0q44zOjWu7xGojnsG8vjgihOMLcvaTyB3jL/
	 xJ65ahfayQqSOH66UU2nucJQt0XiywhLifIi/PhJBciPpexkn8Fr9He/p7s9sdySE1
	 2/6dYMnSH/oVy5+Ep+TspphYIHcR/ejVv5SRfQmjjf9HDBPwlc5YzdY2ljb8/QBcw7
	 wmUbQ67zvY3bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA96C4332F
	for <ddprobe@lists.linux.dev>; Fri, 25 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166935605431.30600.14863852708341394585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b87e3f07454e40871c43687893e18cd667c972aa3a241bcc623009693522900
Date: Fri, 25 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669356054
