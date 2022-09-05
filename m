Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5A8015C4
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69839C433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662409853;
	bh=e0oQrTIEFH+PB/24TenTSjoVW1F/bAiLQIuzT+gZSaU=;
	h=To:Subject:From:Date:From;
	b=Q+Ki7xU5lir7TqIASmHGJbNbdfU4NxmTwYGTYnjFIJdwJovS9E3KbosdIrEM4xJvC
	 krxp9K6X/pfkvIS6km9b23aQ1LCjPhM1qjEc/seA0XPxT7dHLMrTyruj6vQHIlDdqw
	 jho+BhcpI+wX5srEOnAfX8ap8804J3HYdxe+ZriR7uWB07LNN90e/JvJTlB16Aoqb9
	 clcLSTjbrhY8/7nlt8p0nABLUse0XjjPA6BHcIdxj+uuI1y83QBO2XU3t9Kv8XvYd0
	 U/AsaaT4vI2SDETi3XKvPP/OX4uS1Dl6XEDnJoi/fH6UGFFKnKnSBdc+lha+sg6rV3
	 Si/zxHKb7dYig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F452ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166240985331.17348.6292335468502256958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff4c5aefb614e7d35bf362be440ae48919952630be35b254ee4bd10623ca54d3
Date: Mon, 05 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662409853
