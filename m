Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8752CA7
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 10:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1431DC433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 10:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678098426;
	bh=MKuCFQ7WtNq1tfj9ShlyzGPNYZXygnTP0/n+4S6SuX8=;
	h=To:Subject:From:Date:From;
	b=LAj87bvsJl8EPBtSizztMlJpwxut5/AMlxm/dXG9GrTruJ3tF8tmvbg9XefJkkq89
	 CkLb/FWZIJpESqFmbVwfWBo+Zg7IAotO9wigygKBIvIJMBvjQlzLXg7uA26HvXB0/N
	 H6ow0RW45+F952dMahUdD+5JXj5kwPM/PCUmcqdkES06Aaf6O7AAIaob9Mr4/P16uZ
	 TaGIsPjzt3/jJ2TgAquhL4k15TrXVlKsZXN+dJUPbmdbnkVyOcpIj11ZHXCxX11ces
	 a8tjTdXz01slFZrkUQ1+pBEXtW/TIHGkTMswvWIwkUs7W6G+NovAEs2kcnc2sNTXKI
	 tqWhlPtFzN2wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9B12C6FD1C
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 10:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167809842592.14493.4529234762964836178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b8c013fa0cda50d97192fe5b1e396a8e7a4384243f91f82ee2bd76cde51abf
Date: Mon, 06 Mar 2023 10:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678098425
