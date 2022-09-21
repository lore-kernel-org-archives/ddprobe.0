Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2627C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69A4FC433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663750253;
	bh=YygCePbtPmn4KH6Sb3pQLsBTFUPXyjTxcQYuS7BYJ8s=;
	h=To:Subject:From:Date:From;
	b=Xwcu0mKXxWdkScOEGSD6F5i9Y9Z5T4Tn2W6juPzE1zGJCX/L+/mdXAHz+bUfb6cY4
	 h6XoT5Q+PNh321yVf25IXm4hyQ4bls78VENcVhOBZaSNKLeGmL/bFT/3uaSgqCwXi2
	 WD0cC0VAoMiwK76/AMRoAp2e4RdX0Vf3ABrdWcdDZbZhHGcaHMvFwFz3M13bRLuJGg
	 s19KN/MA+Rgwab+T91KOsPuGN26ZsHGC9HrE5NTHn0UwHalTocN4i5pLgQMoJQL1PS
	 hEsavkp195f1gGPj9de00dGfLir1+aw1I24RN8HZzXhS6XiRcYGTX9plAYda+/MMEW
	 5W1E4a+Zb8ZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52983C32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 08:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375025333.28707.11547616904808970315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45566f3ae4a46a49608f58ac54b5d05ebe0717c033c537469479b3b76dbc8be4
Date: Wed, 21 Sep 2022 08:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663750253
