Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0EBE15A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D931C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661589652;
	bh=kT2YqMUD9Uq0kjLdmjU73uJgLBoOf1WAqZ1dGs36ATQ=;
	h=To:Subject:From:Date:From;
	b=fpbgynHOulXM/3wwUO3rg0/G3aJCZ2wE+OGxmRAdPJlisMZyOWncj+LiF3pET4d5B
	 kia4bbEWr43QLDalIdcDNbxIsdQlPgbtDjfkS3UjsL/KkvR3OX/MP8Fx5g79MXZ0Bm
	 ta2f49tNSMuKwTO5bYjUhTTutnHapKbcszxktcjTVJSEXbHzZ+8jsREr7B+HZzNt56
	 2KKQytXJGo+HscEw8b7BEvGTCdv8PXMG5g+6IzFv2F97YPGR5GbKE9ab+XlrC+kO/I
	 tL3S5Sbp0VFfa/f1rBx5web9xyDU3KpFgNRgl52s0qB3SWTe5CKZ8Z3PiGPIj7sLUW
	 fJysaPK3v+jXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55012ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 08:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166158965233.21976.16063211822723329624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e586a3a5cbd6ca39804a96a40c0ad42eca5be44600ef19dc06aeaed85124137
Date: Sat, 27 Aug 2022 08:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661589652
