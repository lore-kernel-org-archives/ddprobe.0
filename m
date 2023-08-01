Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6F07E
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 02:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA5CAC433C8
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 02:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690857728;
	bh=PHH/5HRCXt/RfG0ooIIpExfk/TebHB7sMLsJBN7wvhs=;
	h=To:Subject:From:Date:From;
	b=g9g8qqNge5FBoAKmp4gOia3yLD9E/jEvyHDSiDBKcqoc2V6+9WJPH7DkyQrwzNz6Q
	 ga7iGPlh+sM9Z71pquc+iGEsehEp1X9DzsH63f68nS2bxbfYe9nnOLjGNd1vHMx4Pf
	 /6WLIz1bjTFOyKfmUJHVU6L+g+Nc7kNdCWmqeTHZFLACEkCVwuFwv12wbl1JWNMhhr
	 cK6vQusmXX+qsTcOZ3vSufLMJL709fCbKPaxpxyV5lWAdzXmNWJp7u9GdWKH0EZFK+
	 r3M5ckbbMEWyerY4Y92L+yvq+SUsacB7xAdsLQojztIb0rg7/vinwR/exSBxS2xMgi
	 NuBnJAytPswcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFADC001DE
	for <ddprobe@lists.linux.dev>; Tue,  1 Aug 2023 02:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169085772869.4209.6358120314366827136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b779a739632e2e9598a5ca81a4d9f5995e9d384879fce50daefe05255e095ff8
Date: Tue, 01 Aug 2023 02:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690857728
