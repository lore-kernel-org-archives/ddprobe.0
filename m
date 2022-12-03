Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07CD7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825D1C433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670055654;
	bh=lWlyZGDMLbb7fezuLgN2Bpdgt3MiPdMCcvcopUeYmMM=;
	h=To:Subject:From:Date:From;
	b=tqQZsZEHVXpqRQtZuOKDQjqMrdlgIDk3BeokG3O7VT2UQ27SC2XF99aT7T9spwn9W
	 BJ4eKjuZrieoxaN7BjQ5RLG2ESgFr8pIRQYzgUa1TpqvxybzCj10DTIU2BPo44lcfZ
	 LF53RNBjx5h9xgBUbL1AtHGWynMI/xRZOhYN2FBJJhCRA2S1Mwbxz9MZ2tp1Wo1c97
	 QyjJJp+NM/AvL+TEpGsMXYiZBBfIsdTN22OFRhj6/QYwRe94GiJzYVpicFXjZ6AIDk
	 sXeEsa/992We+IKB8cHDjtgcu+1Zhci2GJTkJdDrckI3FZGyPNn+fKyUPgsmJ/SpGL
	 VmLGC7bUPfT5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63F3EC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 08:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005565437.23501.4904924614066429137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5257d0b25d021ea6f843299a5b4a4af552ffd58db63d37b3ae07d6cbc379bc2f
Date: Sat, 03 Dec 2022 08:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670055654
