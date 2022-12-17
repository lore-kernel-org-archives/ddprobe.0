Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E994262B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D736C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671246087;
	bh=T0IhRPW8VdXpBIPnaWdgfgntYqEqYTitE6bS+9jq7h8=;
	h=To:Subject:From:Date:From;
	b=SoJb8qoYIQ+rgpMX5FhOGlOdIkw/In+3pvyIzXAqSQ4bG7NAaf5PWSjl7Kp7rCo9P
	 2xhFl55L3vJDnDWbJMrCOJCd44WRX8AYLcM7PMRFt/ggUCLLSTWBsm0KcfYgYfrmXt
	 jmyG24OQbu9CdDHLR8AxR07IAQTVJ+gUPn1c6haUD5VgkoNZ6qVAasOevJETcy/Gi0
	 Q2/2L2kl+cTy19ykUC5sLI11iTCQCO4Qp5cmvgKjTeMgftUPcqqahtyo1qDD0GYN2X
	 rboTyBuYRooajcJkjnJ7BUYfEGj9jnvd8jDO3UkiZGnZSMcjPXqxvtswlMg9GBwfmz
	 h1acccuKo4pOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70734C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124608745.18135.9625242669831477526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687dbd6c4281273e6a43160b703f24e14674523eb8007503d13e0cfa87ebdfce
Date: Sat, 17 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671246087
