Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E4A2566
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AA7C4339B
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679485745;
	bh=YWSChg3U5H4fPsNGio+2LPJkNN3wlMBUbWhcJXQuIFc=;
	h=To:Subject:From:Date:From;
	b=AtOS7l77Ggm3w2DA/S6t+WxnhfS1jaI3BW6gOFiSh4wPVNRP9VTC2MqinzbutuYMH
	 jtXgzUv0AwDbTNj5DmGgZaj+q/vMbWe1oZhSIJFG55nUqHoSipaqhkPxg3w3VlFF0o
	 e8dGWyT9gVqYFNhxltP4zbXiPCi3E+3Y376qcbH0nMjnHX9KdQSS8DuG0T8d2yB1g7
	 w5mKOWk2kP5QhTo569JitUZJHmuNHI8m8LVKlv2d4NeP56KS4QqNc8gzWlaN+vq+SS
	 H9gXT9G+6RfcCydteDgI4YwQ8j5xE3QxdryJ72Eyn5zNv1etPz/6Xr27HKjTaQE5KD
	 7iNSSvdeUz2uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1EECC6FD1C
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 11:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167948574578.1164.3431095407365936099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e2ef78b230b0f55ede15a492fcde36ee9f4ef491a8e314a5b7185dfbe0734c8
Date: Wed, 22 Mar 2023 11:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679485745
