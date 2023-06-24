Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51CAA2908
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2FD1C433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687645988;
	bh=pfwNIrCIZiA6EgZbi6NMm3K2mMtKRj6MJViK1UG0+Zs=;
	h=To:Subject:From:Date:From;
	b=t9J2X4HfMYLcd7pUunWRDe304iLJ2B28pr/FIMLfL4O8O7kC7yULcIpjifW/GuDmQ
	 9c5mrsncLjVriLm+OeFJXneOPQkkTz1rbcAerE9kKTOI9ZQ0WWKPN/Z81p0rM8PQdw
	 Td/DEaaJsd7eVftkN6QvvyVZ4EiAvqMNQx0sR+P5f6JPo45BAGF2vAsLZTQ9CLvn4z
	 rrrCPjXc+TluBPOLqbYQCJ/aPZq928RG6NRb3BL+1r1n3XMBBnUg5emUbO1Gl8J1aC
	 gvWQBoaNGo7BaVylFMMgnw3T+mkrlq1kIBMu9sKrW9S62CkOUG//pzUXPdL83GbFRP
	 W3NlIhLbk2c5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2025EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 22:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764598870.10134.4321701089973344136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bdc51b57775cba867154d687c5179ef2182b82bdacde97da3645f5cea91152b
Date: Sat, 24 Jun 2023 22:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687645988
