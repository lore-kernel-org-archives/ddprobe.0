Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D66E520E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD80C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671186087;
	bh=NJDgJrL8GbM6xFL68+LjnIglBZEi5E/KcgUwcTgpoAM=;
	h=To:Subject:From:Date:From;
	b=fs0FBBmKPrgtNcRHYCDjaiqL6NDtuLpwtLXJ5sFxdPjJbnQKlnxjaNCE40X8otIU1
	 mETueC4vn+lfBOePh+y/U361FCAkSn6mHHQaDiUUa0phdWoGw5pmw1Wr0qbpG8DdIs
	 Pb+Zu+CsV3wY/gYgUvXGb+7ACPaY/6aMaKSMIGbD/MExgwqINNCVync1HFwa2n8c6r
	 yjRD/82ZRbHN9mHVjaeaoVwvIHn+JQ6uNRF+tFocmOyqUCAEY0+nA1brkMsoxUdg23
	 0KT+Edw6rsdNYICs2GFzUtHgO/q9qfPVCAf9ixyHEykrI2OzDuxusvJ7F5POpB6HQt
	 BQ1XVFU0tpODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FBF5C4167B
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118608738.16414.14117901960603360223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623830e3b8953c4490f9cd8656d18baeda7179ada9d2e43c3a52bc27f7835749
Date: Fri, 16 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671186087
