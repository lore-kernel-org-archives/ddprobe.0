Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0C32561
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82263C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671876687;
	bh=epJjeOg5GLxc3GHxjJ3BcJ2ZidesUGryy+WkTB2ykKQ=;
	h=To:Subject:From:Date:From;
	b=VS3NJGJn3kyvMorJ0k83rlQWi1Ch6VNf16NBngxSu6cSMRa0u5dhEPJzEUSudZVJ9
	 HtD3/Wopf29/S7cMrDWoTmkh+h13FR07WBQD2rdPlAtnl2djqeZrvjuroI1DYow7gb
	 uK2bzOvSm5iyeXRNMSX5mB3S+1LZMJixExnqx+rro5RV/hHMKehQjYyXz8lkxDX3iz
	 tAIGxShNiOgMDT7rh6/Z+SW4ys1BfjFPljVyA8GPzqAaB45atBol4GBc5R3wyW4g90
	 kkpfS5fBR4c4nFhYBzO+tBtajK8GVv+y/TCs22zbOZMutOLIJd9UiRf4yzmQZB948C
	 vif6tC3F8dI4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65410C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167187668738.12100.10596258524578789748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e098ce0b147605ba354bb25a24143ecb82a07beb5e73b5c3b31d453aca8cc349
Date: Sat, 24 Dec 2022 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671876687
