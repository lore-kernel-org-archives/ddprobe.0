Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C823215A5
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 775DAC433D7
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668649254;
	bh=kRujVT9XiAZ5HoCaKnq2bZPHZa0xYhRSvZvczmfPK68=;
	h=To:Subject:From:Date:From;
	b=Bqg7EbcBnqTyrXomBYZFRYH3BaLNAtM7OlhwkwRm1I2QfFvr63fEszHxmfrun3+Ro
	 o50MKdkYAWO1J43mUJrr/6PqQaR+Zz4Y66XSjhKBf/XmQlnSgmvNY/GI6rwwzYntEw
	 4GjgdIsc6fKfZrccBJfK7l1hrrz3Zy3fBGICKA29/l2DE4McctX7k8V6xTOfyFUsN4
	 V+8IQTbH5ig1Z3/hjFZ6CPZEsvZIa9QnZd0CgaNenWaOwXSaXm2fo0dIkbBGPl3rfM
	 5wrJ2nUPzIoqsTFumpNQnKbQJXihtSgi22RSrJGvtNh+y3knktpqf6R5ls4Uk0Sv/N
	 3b1beOV8vwBug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A9E9C433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166864925435.12535.897504599505672442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6329f4a5f8197746376b2ddfee36135a65818bd06030ffbbd489ff46a3f49678
Date: Thu, 17 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668649254
