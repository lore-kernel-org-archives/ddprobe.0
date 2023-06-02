Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A16F538B
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 07:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC118C433D2
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 07:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685692625;
	bh=fC+XvLB4rtAIX79Ml88jbtctsRJQGMvKcRxcYY3nlxc=;
	h=To:Subject:From:Date:From;
	b=KgrcnaW0m8u6aS2YkT34a4rxzUXMIGiaMGYKvBa65mxTCmifewJx4hrJsxVYRgwc8
	 O6WdZ3to2B9raV1Oy7L3dsqH+3aCJmeI53E9v8ZvXjxfCVSgMWAwzcVmsCD6A6RnNQ
	 IDA9rXXWfsJe4ygUe24ol0becrjZ/p+IqCj3cvYerGly0BeZywgn/wtgz4W+78oM7A
	 z/Lav4aAFjCayr2SDclLaapNyZyYZkw/iZcbG3GlMGTXR9bix7qG9ehSuy6PrVn0Es
	 NO4uA8ruaHp2I92W1IHqzZAnhJkmH3Ssnka4rRAaF3yKyjLj4qDen+dh9jmVZWFh/g
	 RtTDfuY3mN39g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65D7C7EE24
	for <ddprobe@lists.linux.dev>; Fri,  2 Jun 2023 07:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168569262574.545.1085627057210880585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffb87f39ff8d81c21684a55122ee3adc8462dd2af50847b427cb7ac5b4ef003
Date: Fri, 02 Jun 2023 07:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685692625
