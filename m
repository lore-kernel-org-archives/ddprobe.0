Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7226ADC
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 195A9C433EF
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682536026;
	bh=BK56xnM3RUiQqBhsN5ycPWAphT7ZWye79UFkqNGdAsg=;
	h=To:Subject:From:Date:From;
	b=fkBsTrJlskHNeDSzHXzinfAJUOVMHEGFR7YdvNB591u172vzSXreN43eheBrKIGj/
	 fIbGQDo5GP7lk1lsTk5hlEPQmvJwG70ECf8jXXu7YeXl5HX7IPcfdMF9VTsE+ff/qX
	 /jN/o4k8eJIqSGFIDBGJu+BdewkLBH6ndXI/SZ0kVSW33SpYz77p/6ILAr1T7PwwXY
	 o477AcZRDY3iOv27ShocuTmW60i0dTWe25DWl2cLJ6EovB1IkgQ1CxvtZVYKrd7Mil
	 f2kNKHAfh9VPAmU9pdYERjG2f0mjbM/XGTVdt9mQmnxwgE+qMkoCO4ZTnj8Grh8VoW
	 X0i+RXkhUMIBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4A9BC7618E
	for <ddprobe@lists.linux.dev>; Wed, 26 Apr 2023 19:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168253602592.5378.6819325827958463158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e470f432f9a50d7994a6b13306925a5d8d529ecfb9dc2b9cfe085600d39541e7
Date: Wed, 26 Apr 2023 19:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682536025
