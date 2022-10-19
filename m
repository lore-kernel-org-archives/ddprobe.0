Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA4AA4C72
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74A89C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666200653;
	bh=3ZyxC1PLWX6IV7ukWaIdYYFc2kS4q7BbTIjK6fU2sFY=;
	h=To:Subject:From:Date:From;
	b=Pif1y7V7F1KtvMveZtD2FiixnHsRCRYDjryUQ5YeIU1SE1YBxS8ZcLFnBO1Aa9eH/
	 Yo/Va2rYFbUUAd4RjWivC9tzMC7U1GiPu21uIB/YK8IbyD6SLNqKPwulC0m88VqgSd
	 CuiaPuTcYbDdIxb8qgKfTh20EVQuONM+2KAxF5ed6Jgnrgnw67CSRlc1eefdLFucrG
	 arCgzmzQ4liCOPsk1iEb/Q3nE6UCyoEczBObtE4e3cuJgfAi/1zj0HottCUfjGOHUK
	 SR2SWQxOenX0GjJb+N2fpZeYYRWFeS7jhKymyj0+ufmNFmxho2cbGFeTQEgdqyK869
	 SLJeHm6DhHvdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57199C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166620065334.3945.10376900080664820672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f784bd83fb7315f30b5be7682b8d629467a3c1509a1ebf22586b6b5bd579610
Date: Wed, 19 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666200653
