Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C747828FA
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73600C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668201654;
	bh=9imdBEGvidgCAMIlAyiHhRKHo5JvQHO4ufQhiuVCgaM=;
	h=To:Subject:From:Date:From;
	b=TRxir5apJ7xGEAMMNXk7zdW1NcuT8WyQY5j3XUe/NSxs4QBToiS4eQfyoc58ArCo8
	 dsANCX7Njzbc1TUaZP0WLlgEmHygvdrIzL5wlaVdluJLpVPH/ybDlwCc6S5IB9Gh9q
	 VkDgujfGVhyO5bKi5TNnJjHtK0EknlxUZaAtDFnSPwP7aRtR5aKj95khSwaRPyEemz
	 PWQox/jsAf5CPNknsxf7PCFiWzqFuwMNRJlO/YgrKWkW1OBCUmoQmLwC9A0gpvV/D9
	 gM+rlkHsujXHNHNtA/MsaagI5yPzbTdTys4/CiMSksqXGfG9cy9F9kUsxSpDmjbPGR
	 qzCLUP//x0gZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AD87C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820165436.24952.3560815437998689577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea78c6ea3ddc3a5cce73ae097eecc5b0bf33f86c068423911939df02beb9de5f
Date: Fri, 11 Nov 2022 21:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668201654
