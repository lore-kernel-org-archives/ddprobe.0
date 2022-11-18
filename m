Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BED1FA464
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC20C433C1
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668729654;
	bh=Kssd26qhw6/l+Z4QbVp41EX68wmYrMy6Yp6f7OqGvhs=;
	h=To:Subject:From:Date:From;
	b=JKzoBMaO8gw0DTsg0wqK+Gi4Hqf/uWBHB9V3DjE/ooPn7YMSxkyoDimHQ0D9aUKHH
	 NjWyHDVo1pap62UtvTlq65XiSM/qPBSlht+RZ7cS9bxkIAyE7TIuwZk4Kfp8WFuqOe
	 t5B7G51r6uZ11avdUjWRt6NndeuogAZrjlf8+4GDi/cmLemj9wEI30M6JQKbAtf2KT
	 T83PUlA+PQwqlmMwKDtA/r0svgUxI96nisfzFpylC1xLcaHUDDKBbnT/+PcBQ7OR8h
	 BFvp0FJH2NKGfddWUWpm7UMAgPoj6LI5k/0zw0wJYZJa99fWvTfIGIszO9et3XVPX5
	 Iw5OsOlalQaDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5501CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166872965433.11315.11212900507041230770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd0c95a4dea53866ac3608678443a9931d10b34d60b6e80c961cc31106fb353b
Date: Fri, 18 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668729654
