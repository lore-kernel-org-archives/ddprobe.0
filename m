Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5174B5258
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 14:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FC7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 14:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692627848;
	bh=RZQtqc+8gS6nUFElCWALpbHimXY53rGG8b5Gj5l2igk=;
	h=To:Subject:From:Date:From;
	b=gvwcWZ9iYHx5GmneRUi6w3KqU27gBbd4cYN7Kc3Qgk7Fm0hmukGtdACT1uTmbJT4E
	 3O+e3RhssxmnJRm8SWfgIIokEb3nXe5bR4J7n5Bhcw5XbLw+CX0fVldj/c1YIqJ61y
	 b3YA9HqVDCSzs4hxu4ZvqZvUi77TKytgIyYjQFPzKAp/2tkllC1WhPQ+SgSiaRNUMU
	 krQOgI+up8JdUSN1m1f+lL7h6LQxsQcwG32ou80bf5VKlYakMCQr8VP+RGe7ykZGGU
	 vcmdryWoUargUR4jPnVqMkVDl0PxP6dSY0wwFEv3Rvemh+Hkqj6cn4Nnu7VnfazvVV
	 3aEc+DHA9T09Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FC6EE4993
	for <ddprobe@lists.linux.dev>; Mon, 21 Aug 2023 14:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169262784867.24946.15587005650045850253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9e0c60cd7e0de82ce270eb1948179f235c90f222336fea2a82bad6ec79f0df
Date: Mon, 21 Aug 2023 14:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692627848
