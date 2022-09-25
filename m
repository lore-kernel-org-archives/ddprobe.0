Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B837B3FE4
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2D1C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664129453;
	bh=hYKCeAwGSlGuGe4Er10ZiGbSPzLOLdc1Jf+djy+DKuQ=;
	h=To:Subject:From:Date:From;
	b=cDdk/PJ2jFbWor+soZlFEXSJqljF7i2nHrV07SCp8A69tc5gkZmi1IJon4ouahbyj
	 1WkBxS/Mb5qQibZXKP/COZMTcRrivgNscVRsUUF7TUxxA8kgdMYBhdUdfIDGY8OHJS
	 bVZxoo46Lim2inW5OThjMDQ+vR+O/myTkkJ9p4aAl1Gke2rwg0uahlNWdF8NqOrrq4
	 kZaXg4D7dQIyPotCX8gXAtB1FXlzKXe/9S9c2+vJ1NluL1knBoM4/W2MvpFLgfG6iN
	 e1NkGcPRE6vQvIVQRPJ1IF1UlWdfk+lr9uWncdT4aLUUQZPv1jEAgAj1vaSEJ75/kU
	 BPanB/5xBOVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F2A0C54EE9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166412945331.32628.7643481164312203710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2746d7b2b23dce1d920a0182a7751a32411d453eede267874d98c28fd24c5b71
Date: Sun, 25 Sep 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664129453
