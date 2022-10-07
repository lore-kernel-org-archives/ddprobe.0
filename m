Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77927E5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71E86C433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665108653;
	bh=Lsm8q1bNHdOCegCOep3+8rt4Pk/pM2E0qGdAhO7/LSM=;
	h=To:Subject:From:Date:From;
	b=YMa3GKYBz/5G077T0VtJ7KfhrGrj8A4vMnwrT6v577mLWjgKXHjo9Xe67fSaw1fv1
	 2ZshFoOr80BPbl1dRruMY5aUJ6+q2L2wHjeqo3FsdlmGEDIWZSjwo/a0wz3CH+iiuq
	 Sv1DEsbKAWW3d2RsUZhTBOFt+xIcg73hhyTEror/PkY900OZmWuqhMZujvEPUWcj7v
	 feHpnRp96ouErYYmZhTOZPmxDKwqpnO6Er8dMJ1D+DwuSCTVKMrgvHn1ecd3pdxZkr
	 yhV6vd7HH6/IXZJDKQNzal/R+nqYz0QLnsu7Qdfdk+YMBgblmIzgBPzds5PVlL29lF
	 NSLtFtkmbzvpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56CA0C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166510865333.1838.1134576352233694822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43d8196f50cbf07ca651b5aebc3548c6684fa7c7cdd4b8add668f21a0fed774b
Date: Fri, 07 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665108653
