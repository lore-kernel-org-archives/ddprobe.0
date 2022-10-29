Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1FF62574
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 16:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70DD2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 16:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667060454;
	bh=C0mxZ7wmmcnMj3aWlAI3ThlIZq+r11d8YuxCU6zByGk=;
	h=To:Subject:From:Date:From;
	b=l7pIKODpU9XTE1Ow/EUPd56ft12uFfyHgGgLvqLsXolXszhefIPWkKhYV0Ga36/JR
	 U3oxN/A+/h6Mk00EGvvAMzyd/ZGeMB8KSemLbh9GODr70XMj+ZrIbDY4D9epPBcxYN
	 YxrKqSLPGxydqR+c73XAKXsUvg64maKhVuN+PJR7S49MDBk3QRQyPIxcPnttLvEkLZ
	 UujC24jWnKMczWyirgbjsfXTKqOoKlEkXEhv1mQ5ING36OvXkgQzyuR6vYiElveDst
	 Qxdf4wXynh/XJ9RPGOdr2XwqI9D/qI21n4r9tEPKOarkHuDel4EMvwdsh+Dy3nfD2+
	 bMPxUXxd4PtWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56A2CC38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 16:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166706045434.27146.5577096812348747979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc662a486caa555ae157def2f13979dc2579d731e2bbcc5effcba6bf9c90bb5
Date: Sat, 29 Oct 2022 16:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667060454
