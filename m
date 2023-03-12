Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A808EC3
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 22:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57F3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 22:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678658825;
	bh=VKRWvxSnGG5HvZ2NC6oGxuUSD2iz564iRdC5k2nFkJ8=;
	h=To:Subject:From:Date:From;
	b=RGxUkn7R8jvZGe8MsQ6P8iJaXnknjJ1vmMqnjvt/mGbS5vSEimP2g0KZlUgBA2ivA
	 q3APZ9D/ZbdIXeJ7A2WTTwGLwOo0mJCaNsR1QOtmhFu1MAoi6I2yNgFrS6g7ghV6rA
	 +99U0fbutirGyWxdWTRnewTggAahvpt+QMi2sw1oQ16ITAMb0wZAVJKituM7/Q5zH+
	 awauyasEm56nIn7hT2iwllSv425qCRmDQPcjg9+gwgu4I80GGAYXECFhln12pBCRvr
	 HHqkI8+UhYf46GYzUIiGVpav6ECAMPcVCS6Q6VvTPOuWTZDbttEYpyzLfNXWQU+yay
	 muhFToH8/6qYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B718AC6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 22:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167865882574.29661.9733159114615260040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf9f06d75d22271c25f78f407689c107b6adbf6f7363a7bf485e4569e6a302ec
Date: Sun, 12 Mar 2023 22:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678658825
