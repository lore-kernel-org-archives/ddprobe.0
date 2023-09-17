Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB2B4A29
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 17:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA5EC433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 17:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694972108;
	bh=WW/AzNwen6z1ID1T96Xz43naT1C1I+zylHhTbf+l2CQ=;
	h=To:Subject:From:Date:From;
	b=W0y9abM5plHZ5uk6B/MyoQwTKjNMJsUedWxrLmHaI5wvLuLFh3uWmj5aRxbsXErI9
	 zzDX/GJ+tg4p3GHhe0CgfHtkGkuIVJnn4bk5GVW0Td2wTRddnDWDwDYTR6k3MNXTDh
	 A41+om4iHAKKjXs2YNMTG21sAASIhV7RbFfG6h5bIgt/W1lqrF70VsVMHQzs9ka+aR
	 V2jKpwQYVf5MB8UM/jJM6xDEa4yd/YFQZWYOzE79YpclRpU5evbzpfUpVMAzYB16sl
	 aiSbZWjA6WHtQAItDeLsJKYeMmkodIgE564HxlrUgkFDHriNPsfE52XBV0t3qDr2ZK
	 dBeI4ol25sK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4513CD13CF
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 17:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169497210866.9479.3940368722548401348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d938bed7693b66652ba68eddfe8ade568246e0dc85ce1ac1012116bb961022
Date: Sun, 17 Sep 2023 17:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694972108
