Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D655120E8
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DA6C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668730254;
	bh=Xrw7iIORgpXrZj0Q8c96BSmA6Li5TJmi2Y31dO79F1k=;
	h=To:Subject:From:Date:From;
	b=qMvE86eLxGBV+TojLd1L7+g4aRlhDlHv7GWC/PwwnZtCnV1u2U5Pw/TSwNlgJWXgt
	 6U3GEZFCVtwnfGtlZFN4IUvsCbqejIwBo/WM0vm790T5CNcvNy6WE9gmfjH9hzPZMh
	 jBcKSS3IQ96tOod4WIlLL4UfGyWGgs+/wysyspYqpECsI/vRKdLUOLHo0R5Hk+uRwP
	 Z+vKcwRYvshibnqp2nhqwIO1cSs9e5ZSfwIZDnU3JISs9Y3vK7m0izT2NdI4n/p7Bw
	 lLegyk1rEYXriT8IBNaET8tA7Ea2F1A/m/CnKE0hYZPLErqjpbvNejcUwo9p1jARa+
	 HO+IOq28phYzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A21BC433FE
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873025433.7602.16240174466977530567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4538b21af50d026aceb898722a96b3794deffd580bda0425e0858d2b8f2880
Date: Fri, 18 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668730254
