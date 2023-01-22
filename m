Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367DF648
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7987C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674363725;
	bh=utZVITnPDZKtWVMTbxL45XIKvBXM5FPueOJWvJzv3Ok=;
	h=To:Subject:From:Date:From;
	b=BMdUe6QClJk2de9PM0H9qm/l94kDaWquI87FI+bar68wg8rutwHlmZDnmL21aNS++
	 snqo6D7WLNR9Q2HNk1W81QCOLu+plND5M+OzvayvycDuhcIxopnPFXlGmQL0FYnhUG
	 CQbxNHjAOIpcTUslc55Ovo448BiaZdK7FpvvRDv9o/CNv8AGzh4aHoPrcKx0KYNqyD
	 9+6IjjArN8t7UZT6n4RljjYSk1WD/ry9BgyrcjXN73jTY4f09BLTifhellSEauflQP
	 Z4LUc9NLpA22juo6dd3rUCBE19Lo4dvXpMlOuM7lQTwR7irJeO0diqwYmZAaZBs1eh
	 V+RUBiHNeBUXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72E8C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 05:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167436372573.31477.10267506067611496626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d1bb7adb7196215ec42232a9fdb2459951c84a08df9ae655324ad70409698f
Date: Sun, 22 Jan 2023 05:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674363725
