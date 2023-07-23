Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EEC7F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47F1C433C7
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690109528;
	bh=bwEMqrR4iSuPShHTlFUrg+JsUSfrDRZxs2RElp5Aq2I=;
	h=To:Subject:From:Date:From;
	b=XO9l4wCXYwNx6AOUH81QEFMWMxNHomzJqBcG7pr3jzd4Q231POWNvqMrlohDt1ENs
	 hWxYgNKNR9WiNoBZvN5UtBMQWvyVsSZDUdn9xs8d01EtRcz8CB4muJzVBTsZabom5f
	 SETk9j05+NKtaDr2/tj9IQIzcLRWH5JxCP85PJLXxi/yqdEvHa9xdMs7TvJ7pvy+bX
	 JTM2BGMvIfsq7448GL1dNNzf6YP4GkFEhdEhxa4WIpG/UPKZkoEKXHLaI+F3w601Hn
	 BNBwEmqJRLAiUgOTHqwakU1hwFX7rcMoB4TLS/s+nIIrY3SltGQcDvlw7OF5oOasVJ
	 D5vf/7L18I1+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB71CC001B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Jul 2023 10:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169010952876.30452.4274670638700735257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9423001270689fabb526b280fd7f077d140f1b3b4b03522d48b77a9061afe541
Date: Sun, 23 Jul 2023 10:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690109528
