Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA05D20EB
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BC7C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664086853;
	bh=1zliRVyJmCK3d6T/02Rj5bGXrs9jybVtXQXIyNwj6og=;
	h=To:Subject:From:Date:From;
	b=uAyN7WL9KfMP71Tq/BVpkGCK63qTXbdBGT+zh+sSMU81kr8ReSx4iV1Hz2ekqQZ8x
	 H9s2S0Riyv8+5VtCcB7Xj8bkru5BkM6chJ/JtfGMNNdqGlAtw+DI4UloFbOUg9kxKC
	 Af3hQnBt562zsc8zJN1kdAuw7mUiH66zISVZODaXp6NnD8uOBf8a5dzrFYHXxC/i5B
	 LIFIFrB19w+BqxNEfuLt0A3EnUxmt6uGC3QfZV+Z9BDD9OFD5iBzpyBHw8ITwW1lcK
	 YPNqvn7X3x9/xVv3Rwnxyyc2TyEI+ON/Wusf7Z9YITVw+1pk6SsUSiGxZdx+WfE5S5
	 QtC6flSAMc/pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57524C04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166408685332.20715.8808107657266852721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b995b0000b8fb4d8daf59a27950bf34c5f7ba93067d9827e3630613667afc570
Date: Sun, 25 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664086853
