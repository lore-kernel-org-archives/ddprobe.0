Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5893443F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66A81C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669050054;
	bh=sjcQ9GbKAqSKsIzY3uHDLeacBrRjiNkOLfdrMJ0PTL4=;
	h=To:Subject:From:Date:From;
	b=mh/oRRmUilb3vhmKkpArh9nmNi0Jlb8cVVtehklQskQKC9DUimNwxOIOsym6fx3wd
	 T5kc3C4SWv8z6j7DgBsOYa+VrQ2axe5iPL1PERxk/cRpk3p+wHsjhKhMsYyhnDtejA
	 kcXsB04AUDmiaFBriZ1vw74wIe+NUkt0rh/p1kCXQtG3gsNTdNjwFALUGBum/QMLeN
	 a67b540VoijHv0Sez8J4408a5D8U5tFRXM6VLzaC/3r1ASjUSM5GqtPWv++h4WD+G0
	 12dSZv2ucDBNIQIU/c/fy+DhG50+o6cgKpz6aGLWlDy/9tHEflLSV86jV9ettN7YaN
	 oaJUojtheWi4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53386C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 17:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166905005433.26038.7945158242989127815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 200dc52b841c3bdb44e22ba8bc8185a5f2ff4086f1687e2e9e92e8fcd20daf1a
Date: Mon, 21 Nov 2022 17:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669050054
