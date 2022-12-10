Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22AD2CA6
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F131C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670707287;
	bh=HVZ8TaTqAn9+1HclmvpmlltK64JhQ70Mk3XZ3XNCZcQ=;
	h=To:Subject:From:Date:From;
	b=ZZYKFFMZGL2EePtPjWcjvdX8Q4m8h9ePnJmsDj5H/HMJ+cf1sIC8A9B9kGAT3bjMR
	 k7f62KSMhxmXLub/S38OB4bMs4oLDDabvYgt7OnpQkz8hZWegXfw7GIBOID/30Dv4o
	 27NQvyoCE7ilq2caGGxE0mSDtqHL8GX/kC9YQ0Q4un+lX5+53ehUuDUVVC2e4IiD/3
	 snPE6f2y9U2Sv6QDlzv27tABnkSYAFLAVFmx7pTW09rER6xZyel1BQkODedm++G8OC
	 IL4hO8i0E7uTzCvwaf5iaTWCOEMdridrUoUymG7dqDrk7pCOvJyQ2kjgmhBsfz4gHO
	 4hmwrZ/AmUqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E4AEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167070728742.25187.2395418466222728026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0670b954f6ef33db1a5f74d1304d2b543c5f4c25c721831f88cf92bb0cbb9b3f
Date: Sat, 10 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670707287
