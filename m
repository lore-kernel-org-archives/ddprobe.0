Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4BB2F21
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720F2C433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663424453;
	bh=/gwywAvs8xpX7VglGWNL4Rdg03sr7Ds2UYRFKC96OTw=;
	h=To:Subject:From:Date:From;
	b=hlH6td5aAY2y6RfmfcfFmqdQfikVK6dlCZG7QyqE2YN8MWSO6h57VrT2kg/+f0NTD
	 6gQNqqcjdei/1+CsVelKLhIgRTQXI2wt9r5/Viwm2BhUEMgt0hj11ABe0DmBrrDXVR
	 TNJxt1H//zr6SxsHYrUfRGPFvMOj64ynrMY1GVlXykxN58gUOY0SmAJrH4g9qukv/7
	 9ynEUuDQ/rfnqYFVpo74gLpaXdQ2qiW4Di0K3FfiYtJfWZY3hZz15AUatqKEvOKmms
	 VX1GrkalD060M1houXfBhzWAwo8XlHUF0AuMFfpKUVpc2UR0ARlBeIzrQEnJsVWf9r
	 qegUeuNkm5Xbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D4CECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342445334.18853.14411521543007012097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44064b15530c3770b99da48a57def2187f24f115a935b2018e87cec0cdcf1040
Date: Sat, 17 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663424453
