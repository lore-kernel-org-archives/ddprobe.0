Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADE157EE
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 02:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68FA7C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662000653;
	bh=ht4vwXQ0lmeXOGp5JmXz6+iYzSbA/XnYxBJXtsuWo98=;
	h=To:Subject:From:Date:From;
	b=dohA+1pzlrgb2pFQ1tCek7H72UW9lvhq6lrA7l+kSO9HwNXcvrAxQEIM/mcaEokAs
	 UCDowqCHYDjdukuYFHZNM16vD4f03zf90LcoMRjKTN8XUjc6x9efxXEkl1tvR/r15Y
	 WFEhlL2zxJ0NuZnTySfqx55OzfjVfArEev/MCKuZ55tSARcMo2259x+6OVJwEt+zjY
	 WI+mbiOEpMjjyErBVHI3INat5Qzr5bJfqTatg/ALysz3vDSZ/uWfABevzjsnlusTeR
	 shRqcrdULp+pKaQGFE1f3WHSNbKcRM6qzD2RXC95Da+QgpYtWRg657Yv0idmYikmkO
	 sSpJ65/QS/vZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50525ECAAD4
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 02:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166200065332.20308.4656886704410581976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c332e66253e42baab2c119f1b9184d91da9223aec5c85ba35db31b824896f3e
Date: Thu, 01 Sep 2022 02:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662000653
