Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0B93D7B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4B7C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687545188;
	bh=MsrZ1HgSU5OFRbFFd/VUzLbBGKZC/0kBsOT+tp83vmA=;
	h=To:Subject:From:Date:From;
	b=tRymxKaWrBXzkLzQCel0v6b2/BIdjwa5xG77dS+YgmjL8MReKshikrck3BfX4upfa
	 QeIW6uN2+HBp9AxwM5J2f02gGL96SuFPgbsEFr9LfUYzuuJ3NvRe9BizjL2COMr+Cr
	 kzDdtKjpiP1vP3q9//dtKPzTkJaqjiAYdinrkq/JCLfZ5pC4c1uftUqkrjb9UVmHnc
	 m9Fyw47MR9SI/I2VIy+aM37gVwliLUQCgdexB5kU9dV1ZlEsAAz/q3DCgm7gjMyOgD
	 duqafBAnVsW82Ro0vg2Xzko1zzHAnu43ZRFfjecQvqIauR0N9mLTxtpHRnsrsLtbpf
	 DT/KWu5OxPVig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5E52EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 18:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754518867.30425.13244803580895138535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c33257360cacc108d1169494fe58ce59d668d7bc4e223f75be0c813f514e3d69
Date: Fri, 23 Jun 2023 18:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687545188
