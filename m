Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120DC2C686
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4ibWjHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF54C433C8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704398296;
	bh=v3m2Akf7z37N8HH80MTxiPpBlQdy0WG88+cD9uh+ZaY=;
	h=To:Subject:From:Date:From;
	b=c4ibWjHnRDL64wfocHcouuXgnV/y/KcwnWROeUZ7V8e6bFNkJhMFETIP4d4Yljepr
	 w7X0Ras02EN5EW13noGXbPFA3x3egbIkRbZphAElsJZipcMOgSGC+qRXYRrxXksB/0
	 cmRTiqsbBw5pnINJ7ersslQMq5ufj21TKdt91MrZDEOFwOejgfQz+KD4+9fswTyotO
	 EHr9bHT8exin5p4w1QQx+6j0XnjWdZf8V+TJU2GRQVlYOiJedb1ju+JdN23iWJXLxF
	 hJ45UeCVFcxIeY2VmySx7puRxKiWliJ5/JzR46ZV+7VdfyWjg0+vuSRzzZEElYds0O
	 883jc39zfBrAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F4E6C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170439829643.22129.16083024158372059118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf123e8e3ce662785566bdbd92068863ffd051e7fea7ae88ba8b781d292a2c1
Date: Thu, 04 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704398296
