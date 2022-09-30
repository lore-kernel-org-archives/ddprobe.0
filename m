Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB98033D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6550EC433C1
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664547053;
	bh=JwR1gtHNOTdFOHgSB8twyfCnlWxGEBBeaPDHV9vLfPg=;
	h=To:Subject:From:Date:From;
	b=NulMPVaPrdOtQS5j6OEW4Ef+xKNOdmc7PhwbXztvQN/wOTiyXWpt+LwkH/R103Cdw
	 9+5NgVXIrMX8KThY0bAIf9fAeMBpB/TBseyJCsLeSZhPTfL6YpnelJFm1+JZZMKEAE
	 ZfBO8cfj7E0aaeqc/qw3Hcs8t/moyKcnQpozgf7qKBWum7RVDftGQh4fe0BKR05uu+
	 WHiiMakKjrI6XZZK5dSFRQFYft7uG0XT3RZRSDJlkwYnxLlnHMwbcePBY8xE1vm607
	 uU+LSzFDgvebOEU1NWAjPtwQKDdL9LjZoHE8buJxSaQ+0UaP4P5whocdt4dYgT6hBD
	 xU3JuxoBmphhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E89DC433FE
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166454705331.11151.10426509404936528921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adc5f6ae938f380ac61174f93a007e632c2a67a70ba031191769e1b7db70da7d
Date: Fri, 30 Sep 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664547053
