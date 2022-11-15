Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD0D24F29
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76221C433C1
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668534654;
	bh=dKRy2L2QtPo312LphablEYZC3lGo0MQLeZzHlQfhIT0=;
	h=To:Subject:From:Date:From;
	b=i8RfzWuf9oNbRpNOIFH4TFUkddwKVz+LCV9R4LHz2MiBygs42Si5SLJw2KYF7BBso
	 SBkZ4E4MXojVG8o+RAzskrdn7p7gauWNtMRdzC2XSj82GOZLuguW4mA4hcKhS5IQqJ
	 J/ADGGOYaFdzvHmB2nzCWYQIjcI0hVQ/qmDI9jKKwAuf47Uty4aZQimuZ7aBzq6ek/
	 fZc5exJaOtgZyhEQ3UZ553LWV/iGfGyqTQz2nGU3W7fuapWSwyTnruLYrjeaik2RIL
	 YY/g2WkPGMPMxallipHg1r0kM6KY9Z99GEmb0lGTE5Tiq3dyshP93TFBKrQxuLcUoH
	 TvR28C9NEWvuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B069C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 17:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166853465434.5394.596820342947952482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef33a265fa23908d1784ecf4a0edc5644b7267e9eb346343d1693c7d9da0082b
Date: Tue, 15 Nov 2022 17:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668534654
