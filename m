Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C23BD20E7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C983C433C1
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664863253;
	bh=C9WVxzWmaWxxs0Y9fIbayrt6vEhxnbXm9D6RkdR/rPk=;
	h=To:Subject:From:Date:From;
	b=lLia3EkVl4tyI7GbC/6B1S+8K3qMVgESgaoTt2AQbm/MWw3zG48KLnMag0nYFDPWc
	 to1dz+AbB1YwyLBr+2iOuiauCu8YngeaEqYJUMPwEZGWVqO2qHwFIUZ/5kS4Y5HOAf
	 6obqoad79HZs8d/Rsvk2gE+P5HNTi0OJz+RbDlZ+QKyxcmGSaQ02xDc5/VOd4zkKA9
	 hZeMMj3r2uUSIlK9x8J67odyrMb6aUUAaJC9IlMd33tK/ly20CGPLhFzRgHozZ6jyd
	 wAcWEA6yXOZbcoowlc6ptHyUaKkRkXJG/L48aLRgXnV5BS9mEyDVs3I/+PTO1abzbP
	 6w5IVf1pc95UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC91C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 06:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166486325331.7607.7255614035315136588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451ab2b0f3251c2f28a59b935588a2a659ebed522e07548370fb370936832bc3
Date: Tue, 04 Oct 2022 06:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664863253
