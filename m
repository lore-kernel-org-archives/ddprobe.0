Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E41374
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93A77C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672726287;
	bh=6L1FcmoLHlB2Wd1XgvhePyO+mgeMx1MDAb9cfK/mlek=;
	h=To:Subject:From:Date:From;
	b=B76MGKPprGg45Mhp0lK+F8JZcspvHfRdC4b52tcvpnfdEcrEk9miOKlXjoSrHL+sF
	 8/gEiVn1J1FJUDb7ur67d8uA9S/r6M27Jm2Mka3TKlP5XR/BdrLSZDGJg7cDsFpXWR
	 FazkwH694Ss0v/YelK3qg+glDNYMsDXQVlmNsIg/sxyxdzPpVy9/X/RLTNlGF2VT1f
	 UDT3uKsCGDxbTsHns21DOi+3Ewc9rSXb+b8y5KtKH1JREtAfOvVtGeVGRTW93htBEy
	 BgVMo6JtV+HIVu/tltfw2hbv+fFTOkiIdOumwKlX7fNhsjAchjwBXf95h1fbSk62iC
	 oWaFr39znRmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 775E3C53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272628747.10186.9797137056328365473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a9ee0af3b7e5447eebfa0b111fc3dd94943f051f51ac635303c8485910c6516
Date: Tue, 03 Jan 2023 06:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672726287
