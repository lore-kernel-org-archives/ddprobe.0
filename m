Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242751B7F7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhFGCuQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82C26C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705405696;
	bh=M39nEy5E6maqPFFHuxfMIbbF3ccdAVRSjEmhqZR4SdQ=;
	h=To:Subject:From:Date:From;
	b=YhFGCuQTXW4QFAFBUz5R9P9elytuWyEyeezUupMwcsbsjn2IKmahgwLjJoQc2ZlhZ
	 RJjMYY1MhuUhqnOKW2fWa8cKFp7viVbLvJe0nsz5lN3oo5wwOHfHcRUVhxE1nsQ6HL
	 tYdXGh8xSO73mGQWvacpjmDMRNx78Ttz07geGy+GmGpLj8Q0ExbSnbc7vRA84oXqEz
	 idwNjMfAlYoe/k8U8YVb4EiGhLJ+vedJEBrD15yz+YKV9+e+hRU7BEv8aYi4fXS5M2
	 rkFn0Dh6N8OpwxGJepbhc7gpgmslgNpxoGHUfFFCgyrf1KaGCzPP2TJBcKkhrB/U6Z
	 0ZR+rJvEqpPng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67F74C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170540569641.17229.16958651216076007006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4755e2f624734cd26d5f3cf1a41f30e2f5e9e96282a48ee3a086895f9cd3e4d4
Date: Tue, 16 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705405696
