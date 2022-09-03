Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B84D02F35
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E0BDC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662247253;
	bh=WMEgiaVdfMsfK9mUFkA/Dd7yVk7cKsaTfqXYISXJkUo=;
	h=To:Subject:From:Date:From;
	b=DFvx29HB5yFftJ/YweUDNjkw4flrLu95XQ5SOHrjEMY8qarI7gZUie81Xi8F8zW6g
	 +SRKR81Why9xx6HvVQJakaAhbUll6UWAWlZvRCNriqf8AjFpWxYpPhSg4IujSWUFdT
	 TvP+HxmY1YN/cDf19cix1xfNL5hhSqxgGg4uc17xYSQjk74VeEu/tjjlcjKwBMW3wH
	 UyPsFsjMSWbXf1sYsM7+9WtEpqJHjsD3tqTHhHk75/+hbRWksamDfgcPDji+2KldmO
	 yvHe8zL/thS8jq4fH1jZHwQI9kxSet7GIfkw8G4MT2gHiYWugr/hx6Vui2xfbNdMZt
	 tApCIFRHU+A2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5354EECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166224725332.557.14086781119477459038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37d789fc9bc68fe66a7d384acdb355f1c59d3407f844fe59fc8c107a85e40f1
Date: Sat, 03 Sep 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662247253
