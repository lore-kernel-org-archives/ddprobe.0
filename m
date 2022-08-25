Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20933C14
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A198C43470
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661449852;
	bh=9yZzwEOgCH3EdOvHtwU4HAoMpWdXjsFDhzyGJ82vcgo=;
	h=To:Subject:From:Date:From;
	b=dS7fTdymA5zKryjjmH7hIwnKnzzNhLS8tAK2W1GTEmC+fYTiLMvg5v0xgUDXOUbnC
	 GnkZgSABzo/xyQOIiX4Oh3U7OZ/U8THzPCsickceidn5dOH6jMPX42val5F+Ax6nat
	 mfVq09Ed3k4QKhgwuQ9DDCPCEfFhJfeeuDtZA8YDjix5Jjwrmb+xVresD3BIIaK6Oy
	 AibO2AYmbK7My+Gixl2Pc6kAB2sh5vn/MJ8rGbq75GCq0uGoWzoWWVzGJPbR/Udmnr
	 a7vlWtodSrY36smzxr6r2YaPFV25oILzqVHv4XE1ZzmIfo6vAq8a3DnmVO5Ccd0plE
	 uuQr0Asu0zt+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59715ECAA25
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 17:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166144985235.24804.10962778963853223684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c596e9a0874489e9c486170e59f818868eb96072b18c0e8eda910af87084ced
Date: Thu, 25 Aug 2022 17:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661449852
