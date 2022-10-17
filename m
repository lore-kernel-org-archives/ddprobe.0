Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31FD4A13
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71D58C433D6
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666048853;
	bh=npapf6qHwbRMi0zvYwgf63cE2jnnjDr+sYAKqNC4zYE=;
	h=To:Subject:From:Date:From;
	b=Ke+yFa/puFR0Mmg7vW4lSLBMNt9Dpr8eAwuTqwm1rtoPy1LaO9t59OYJ0nX6qFIhx
	 sUjFg9tSO1rYRASb99GXCmuaA+eZLK5b3Ul5TCMr9sVWrGJkLUdcc6jhaGKmApXnmv
	 L+7eZMQ9E1NHmZnRa5PT2RCpVxSwEFdGUfXvvemQFxN9C2FKwQjnHtB/krPplSoiK4
	 oS97UBRFzPTb2br6hDZDdA+6/9BkEo6Su/lRccxwjnepYlH+uufSpE5AHgRTAES4Qm
	 BprNM4k8/VaJArNfrejuPSFyWz3AxxykKZPYnW1Ao9WQKYyQr/IxAD6YZWEnjfDVUG
	 Mnl5i2D8aoBbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56F5DC433FE
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166604885334.16358.7192336616479357348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec79cef2c1591d937566b5534db114fe764bc7bff55db0d0ec997520c722dd90
Date: Mon, 17 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666048853
