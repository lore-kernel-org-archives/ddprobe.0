Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7D911C13
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71667C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664461253;
	bh=Ct4Ld0EYZzkSmV7bN5s7Fh0gNDZ2Iz6RsVJi1L55iNM=;
	h=To:Subject:From:Date:From;
	b=dDNiB/NJkRrcixh02Ob8LqJ27gfJh9f9hd7gQDu2eLB+J9Ur56M2/D2/mX+A05zes
	 t/sfMYEZC95XXv1JHftyggzm6IjzEAte0A1agVPk3b1UC7wQtDtbORcSRrP9X0VGmi
	 5E4dPaqDmdTgxiLO4kN7ovtxkAyeGttCe8dq1zmYDs1+1wU+jzQkrGMv4lvucv8Ddu
	 zwnFtYtwXPPB0laeM25boQ7vWVSDciTid3cDk83Nn28nS59lZXkCM23+m2oTpeTltK
	 vcDcleAxjIUBugjIcU58NzD88ukDpXQs6tjKbWkr+wXsm/47Fm4AnQPEMG1TeWGQXJ
	 DxweuZ3A3kpHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524E3C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166446125333.26760.6586501076338784170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686f496435e29b2a630390f06cef146e02936b2b6560582dc2107b501fcfd6f6
Date: Thu, 29 Sep 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664461253
