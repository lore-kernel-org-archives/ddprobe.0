Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE452CA8
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3D5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671888087;
	bh=90tcEfd4L/jhBci0VBWOc/MEnTt/rOPpnMKYSM0tcTg=;
	h=To:Subject:From:Date:From;
	b=IHR/UpWdd6FLrFPloKMeB4jHLvI64vYff0WOeg5K3MwyX90jCYAoZtgX/LhyZFFUe
	 XJIfkspO9E0Sltex2jqMfBg6DioeduuJDJ1l51IYHY69hwsvjXx5uPrgZXNlj7+/Wz
	 jvV156zbdMWDUozW+6UPbmCwK+MJZO9QDwr9DoFbcMyk4mQbXpiFKdMHqXNIFoOEmx
	 bjSqDQz5wfTiQqHzmICUV3oLXlTUrNETUzisHLQ7Wrb/XXRRwZAWiDXaN6xR6pmj0E
	 SSiUIx27of44cWI6tzxRw+WXnjJ0KQELhAzByP2/cIFC19pNnkgWoHi0ATrVgl17pO
	 iu2y388yl35dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619A1C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167188808738.29269.8318794778627198939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1444c7bc7b5265b4e0ae9a091ade80246d6d72d2d4205dff631a1d71a73198e4
Date: Sat, 24 Dec 2022 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671888087
