Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC9C7F
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 00:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1D68C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 00:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695515108;
	bh=jRb7PjksRCmMK9/fTMz+ipt4cMHPnbHXjP3zF11XZlc=;
	h=To:Subject:From:Date:From;
	b=Ay2VNtBuMOzLdF+QNlBE/3ZhIGBn9BbjNK9tjyL+ErKe4GZ5ONpdC6o/1jVlJ6sd5
	 qh3hdJ3LrpRW5+WSl/qZIM5noqQJHIdWQIqhY9Gv5VpfObWmIJkG0whQ1CCtwAt6y2
	 s+oG+OPOWc+UD/+kZRVj2y5mJmEBZbKa+MEHL9Gh/NhACV72co3APjjbetmHr89h8v
	 T8Ai6m1mhZ+X0UMIyU7VTEQoHNIF51zwCfcs8qcmKFZ/fMEOdgy2JJTOgzNksL1jdk
	 kRxns8FF0W8/3hvSPdkpVYyMA5GYilBqC4I8BwETLhhz114yDfHdLjJaZbfPlsjUIi
	 cav9DqbcLJK8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A515ACE7A89
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 00:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169551510866.32302.258361443203012022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3fceb411ad254423509dd28716aaa5661362c44647fe547ee73ddc05c0d994
Date: Sun, 24 Sep 2023 00:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695515108
