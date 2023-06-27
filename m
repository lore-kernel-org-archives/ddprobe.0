Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DBC3EA1
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3667C433C8
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687836788;
	bh=p0jHZSDcdezRi41oSpr4Xl1YTrtMGhWPCjPDFqidXLc=;
	h=To:Subject:From:Date:From;
	b=W41Y+5JsiUiMoorn+QSCCcQpXcJF7De/OEoBYeLk98tdnCh/JNXG+VpeiBHb2DUZQ
	 rH4oI+1t/VrFgVu5A8C/S9+g68Fp1TVSEkn6833g4RorA+c51hGvPsCtG5yGpvvJjU
	 DQI1ez8FV0ISt9Tb8clmmM3V4sQ+iuJpZJdVz3394f1BmGO0K5P06JD5AZF9PK0FKY
	 L+phNT4ezdza6vucOhyh6LWKFexkpBQS7n9iE+hEAwom2q6sORebPTMR2MWwLPEoWO
	 q/KBFwR3Zq3bB+VvYO9PahUoTEDCTl/aVnWHVFM/fmnWYO+nEL/iIgM28ZVoeO2IT3
	 76lc63Ges0YGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5911EB64DD
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 03:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168783678873.16163.12928880177674508602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4177e6dc3828154b86b32246de41c5fa5adfcf2d9e5e09479bebcab95081e55d
Date: Tue, 27 Jun 2023 03:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687836788
