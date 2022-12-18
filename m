Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5D4EA5
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B62C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671362487;
	bh=fNaS9AL+jC2wYq8LclIavuTvf6trdYQ3A8vjPYQEhfo=;
	h=To:Subject:From:Date:From;
	b=NNC12T2p+F0lReXwo1TuNIQqwQ8XeqD/rGhU7WMb+BSG/4MN1O2EeocNJZSKKseeU
	 88HlnRomQbwpaOrnYzylmjSt/iZU243hb3+aUr8IBcMXX/kA1Vvm/fDEx1qDAAehlx
	 kprS7QT1M3bjLGyi3fODGySQjh6Z6tTidMXarTIMIQl61z+nJyNzHk7qWI1X8FLig3
	 0yuGEVTbhmc1QKHAYkLwmpfss6S9RLq5e02SqVuwSPxb9Qjy6V7IyIf0RzC7dBvxpM
	 aX6lcDIher4mxb7f9TxLS7sAz/q8vvuytdHrHhLqX5qvDJJUd897Uur8Ci4Uu3ifEJ
	 0EukjPKeEXDVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65617C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136248738.27623.5764673041234765491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6f0cfb4633008bdf9d7b8c635034940344996c9e1615806d81002959a25930
Date: Sun, 18 Dec 2022 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671362487
