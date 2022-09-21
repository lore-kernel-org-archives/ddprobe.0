Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87637C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78317C433C1
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663795853;
	bh=5gRv3BS2m2sFCyD6p3lx8mGnCQw0lQLgb5JATkyUaoU=;
	h=To:Subject:From:Date:From;
	b=otkFONGjhVVxokJh5h8ew0HICG+hD/O2UBHwXwgkDtJJ3WhV6ptG557vYb53WkXjr
	 kM2CwcJ35Wb3pNkWgoB369R7hfQ0/WTv0V88Gx3fEi3RFoeWXfQ7FlqIau8AJ0L0RO
	 bnz3zFb3J08XIwr6UItBmJO5PAFqLCMNmcUqgr7YjDLwCe8mn39BImvI/8hnyH2Xik
	 3PxDncsFumm8BvWT6ZH3dBcXqAX3FX56mU8BwskUA7jm5HcnQmLzd8AYpUOjJBARbJ
	 TQWpJcPH4928H+L39gA7Ngff/FjnStT5U2usNcJmEkRdE+Q9zfq/OxIQb0hgriVXYB
	 NxElXla8RxW+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFF6ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379585335.8094.14302120216344820279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567d36da3bd518a1594da508ea4f4e43d3621a725c21c19e86a4f9f61239b648
Date: Wed, 21 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663795853
