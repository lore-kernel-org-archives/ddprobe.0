Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0567E4
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710CEC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665900053;
	bh=VB5FkLCd7uDQEa2BsmHE+hvFn4AhEmS4N1sfJh9nMPA=;
	h=To:Subject:From:Date:From;
	b=kbc9T3izDBBuT2YYtAMU3NZ208Zit+cbNhe8DSlQVOWH+qEsTc0Y9BuKh9lic35OP
	 3pI2nmtk7n1v/Td5ozAeheo0wKY5IXd8xZItg+WIn9o9hNCl4Bd4ZkDuVstMjdjtmV
	 W/0kcqVfXEgw9rLz8WbE4bQENdSHGR3G3QEZbPWZLsFwE75QftZ8Jg6TSpZ3I51fVh
	 PFAKDgl7Hk3Qa7fWDlK0Cu2FQD6K4TcSfKmjqA0tnxWi2dsbC6r/qgrEljCWIchOKa
	 NlsekNipD+30kpdH985IjFJkhjsxmSmtuONBlNMH6BznXqF8CNeyzW15hITPTospW2
	 of1nHD/MimfLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B65C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166590005331.24616.8120925974007074060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc95bc203a0c32daf39f8c5142a50c1531ffe046939f3a284c28be0865259ed2
Date: Sun, 16 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665900053
