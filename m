Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71EE53FE0
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 06:31:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB03C433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 06:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689575468;
	bh=CGCUGLFixxyb/2jQQVA8ywrutWrLBJi45YztFEcYvNU=;
	h=To:Subject:From:Date:From;
	b=OGxKMLSMPqbs1T8WuxNCY8kO2HA3tE+Z3MzZDcI9QKzXhOOF0NRfvUZdi7ozSYw2I
	 6OKnJ3+cg/sIZ0zL4joV2TzCI8TC7AZ/dMO+yAcRPM92KlxuqWr6OCTkQX136wRjqK
	 SGKFKO3DI4yPq9l9OGZ7OC3Dc22zZKlQbME19GMS6kbO3HLGFcFDNsrgz14XFDOL2g
	 yEZ/Axts/BU886MUBOx/m2jOhac24lT4B+SZUzhC4Mcd19lrbYhn/Xauqz3XEHmMsH
	 2muOj5Mvg8uQKXRY8u+0xJwG8evOIZVNXQ4HOiIizIwVqqU1cyQ6ZxPBkn09bP+Nzv
	 XFjdHlLYB7cdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B579EEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 06:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168957546873.6895.8555153153378661970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57559631d21c35ae89488aa986b56efbb4bb99a609d257ae5374226a61eee919
Date: Mon, 17 Jul 2023 06:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689575468
