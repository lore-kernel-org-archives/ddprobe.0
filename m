Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B48B37C
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B31BC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669950654;
	bh=UG7u98ggTTMLGZATEIZPhGjx6iL7oo0XzOAqGA+LAoI=;
	h=To:Subject:From:Date:From;
	b=TZDn89pJyDb2M/YNLGD8PsY3oJxGJL/oT+T9vz0mXIHzjwSAA2SUWmkWiKM8mtpG4
	 y+Hh9lOrZodjYFyevwv27h+/kpHulnJaPnBNpqWYMdO/JW/ye/o154xv6vV2Unpca3
	 214hLGTczyWcHAiDwzC3exZ+AsZdInQJvH6tYL6e0B42gV2fOpv6OQhQ2ssvdnxw9N
	 A9QcbRanqBS0bvubQI/9PEKzneOEWH8VBZQ9JCdta1N6nXHIbN5Blsw9OSIBbV2ykp
	 ImXY8oqTgfIB5Rn/f/7fPjeK6ocBnGtzY6ZD222IiobBxpmO8v87VLehq0OZnMnvpS
	 JXmkvX6Omv/Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55954C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 03:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166995065434.26158.12197847980827765014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349f787e4db2adc66c7b17df21b483c46267099fe6ed8dcc966ff4643e92c4ef
Date: Fri, 02 Dec 2022 03:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669950654
