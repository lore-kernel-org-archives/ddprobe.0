Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4518F18E
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 00:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA38C433EF
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 00:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685061306;
	bh=fUf1XzGgEMCyds5LSx9faMgodfwR/VL62tgH8ht9Ffw=;
	h=To:Subject:From:Date:From;
	b=hDpPvT1Ai0JZnB+sYF1TNN/NRswquo+X5v1LUXhlgTN7gUoPm7MS9hMMstyAKzF/1
	 fYTD5v6apM35Bcz2Q5ufckS75TI/5s+f94UJFotHsxzIaSHUsanpw4eTvdg9WqKMO0
	 T0fpyCAW86hX7OZPhsFXG9fdOz+MNEZqnvVxwidu9BX7qWpkVA9twSQU4GSPSMyIBs
	 HQEd/IQiGfJzbE3nsrSGQ0i5iDRGoEJZf33B8XLl3sJPQuEOwnij1HVbqWSSCXf7L+
	 OCVWKtamZDgZsGnd96oqsiQb6HZHXfr4gkD5wTnyAKoHTBxqHtOfyuT6Kpi0dXjLrd
	 hqxWPi6dMg9bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D23E2C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 00:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168506130585.19375.18223349338121681908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36411d2d8d0af295277da04b4e73666584402b0413f57da5f85f7404309b4141
Date: Fri, 26 May 2023 00:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685061305
