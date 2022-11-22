Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB547EA6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8F6C433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669096254;
	bh=OXOeqiISodKUeI5AtjFDZavZhfXofAA15261GR1dwBg=;
	h=To:Subject:From:Date:From;
	b=Fl4+xiAlrRN/O6OUjAVGXVxZeXK/xMG/V1WuRHuGo88s8IaTqNLICTJ956MRp8DpV
	 +j6DHHFQ6M9A+W5Mrd9ZL06vEPResWPqGyFpW3uGioMhM8MYuSmopFlbdrdTt4cTw8
	 eS19FAiTOd5u5Dt35CwJ1aE56ga1pVejs+mddUHCXzMaORoLsl0DhgUC3uLvQuDoOi
	 RX9KjCIjBlgET+q3syNtUKn/x7/woQFmQghTwEkI8/jfY+Vwwvfv+q2tau824Oas6Y
	 7F5DrYKuEjbXiXE90uihKO+qJrZaqLOCMhXHTwZnhJYDcFLef78hE1dlafXQztCOzo
	 HWVxCUG/XqhxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50917C4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 05:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166909625432.9233.1393472199154031523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adcaab3a2a9a1ae4508684a872a764943fd9a16145ba5a0e38afd4609f3da82a
Date: Tue, 22 Nov 2022 05:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669096254
