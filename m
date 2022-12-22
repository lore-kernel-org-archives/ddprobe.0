Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB06533E4
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D5BC433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671714687;
	bh=AkCgTng0qFjGi930YE9HTIpsRGqGi08JBdg7QkZGIlA=;
	h=To:Subject:From:Date:From;
	b=corynkYIyy3DEpdN2DGjC6yDEcrpOjZRkfHldqp1CASfQBTJLkBsLoBxEFVhNmwit
	 bZ4O0XRooBPvAr9rmHVmDCXNnSR9YOzq92a1XuHQgWCi1I7bDkwlie4ye/ZlUCPDl6
	 94hQW8se+NN9aJi8eofdSz39l0MrLS8sWAYNEmJj4O6ulLjzvaN2LQN3LzrZKCh+7K
	 rUvK4a9fAlchQw4yyfZLl3T+mtXVuYnNFtuHp/WZmbAK8XHVSV/gZtq3PoK/MrYXDK
	 SCa3echwUdb5e8LmHdnnAtmxZMVwWmvic5k3x6xgQaAfQQLVqRZXCcB8jTn7q6z7Zz
	 xjh5gn0j5Uwlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CDCC001B2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 13:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167171468739.2895.2519304474066590985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce242ee9b826eca8962d8e26d8e864b8f6c2e6fd6db982dc5c43602b263fd807
Date: Thu, 22 Dec 2022 13:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671714687
