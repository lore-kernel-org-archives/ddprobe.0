Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1A047E
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EE71C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665312653;
	bh=EkayzMmBnumQnEvI2bxgjI+t/36uJUJ5Mn1GX5QCwRQ=;
	h=To:Subject:From:Date:From;
	b=ExrxhVhV8g3DnYUg/esJiN5BRDReO2KErNihJXdZR8CC1ujQwcv2d52i7h+wuK+gS
	 0zG9711muFqV2AKnwdqmcVac/9G04GKBcHZgO0t2gl/DZqgU+oeeAhJhCaJIEH4RhX
	 pK/soeJ3qvnL/hBdGvdYTFaoqSPVH4wcLRMCkogXlplPvWxHT2QoV7IsHtaMFG0TCw
	 i5i3cUNCjp9xxHiq/OwpbouxOxSNgbagsoajRh8C7dsaHL3xewKNUP9tcSeJVO5KBq
	 vxflrvbFa+U+BhdnRjT2xGm/pT/ifr+6+Qk53xF3ptvgXWBPpkqtnc7FWZmwcaGipM
	 NCTSrMz4A95Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53983C433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166531265333.10671.198247591832028594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 654601f04f2a4db837a249003ed8307386a0fbebe93468c45315452540269649
Date: Sun, 09 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665312653
