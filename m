Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3EAEA48
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69AAEC433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663572053;
	bh=H4uplu5PbWwC6LjpqoH2wBT77a65k9b9IKHONf6Ll/8=;
	h=To:Subject:From:Date:From;
	b=HkLENTU5/as7HRf3azO0YyIly+o54CmM0KdnfAjFQ6rxsoq4dBRdNM4TIHq47jQqU
	 wJF8Y7CT9pwUGHcedKpa5mEDSZL/oAiVjoHHAISVdo6qgSVHMaWHIQgxxsReh2Bd3K
	 bhaenspeHCys/Z4XFLAJdeIz7EVnFbcytOiyG21JawJFKyc08/14bRV5pM8C47H8hM
	 rRdTcaIAlVFMgRc3a+pYPygWbzNBTil/3oKZkCinAdOgBuIe/BVQR12cWiP7rRCLoa
	 hLgJDVF1g5z9A2vBmei9qBuPrXiSEWGR0KyM7Wvx0afl+8QD5IlgSqPuH6ma1lj/rd
	 FcA46he8VEcbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E941C54EE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166357205331.9390.4696524906123571966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7479a444ac4b89c28b716894fc7d19c9ed3eddacafec331bd3b204948c82da39
Date: Mon, 19 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663572053
