Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54FC163
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73666C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667002254;
	bh=DFuvHZCM/2lyvPND+rXKABsgVSq56TC5ET8b16EhExc=;
	h=To:Subject:From:Date:From;
	b=TWK3+lYkvgq5D5WElZuN8ion89wel68PjCpUjEjuMdQWykoDz9fkktpuLT+xp/fUD
	 C9BG5rtKlE0uVoJFBYtMWo/YP8kjiux1HnoOfqu7N1iqW64V5irnVoTybj0NJLPDlf
	 kIip8i6A99q+XeQ1OgdHVyHxF3vD7//AXFF0xRhulJ+V0v8DdyB/2OP2mKj32EDnO4
	 N2mkEHsf53OxOoFOb5vz/HBugsPLl1nNU7sZZ2zCRWZPfmNY72/QlGAqPtKUpfrOOs
	 xGd8stJuVgkpgNB82f7E2DWH4EqtgOOoOk9ZzpUhZtA6yc+j8FR3vALp7fE+at/NFZ
	 1klJS4lGE3l4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5292DC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700225432.10822.10679075147153799589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c847055f3d42db68017cbff38ddf7b8f88ecf567d6234f5a0db56851f3d22adc
Date: Sat, 29 Oct 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667002254
