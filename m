Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5DC123B8
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75360C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664040053;
	bh=+C8FNxEUs/oLloBAy4/BZ8waQa6AQC1LJCKzcIggF90=;
	h=To:Subject:From:Date:From;
	b=A9zScTbyGY5Y3cZsIv0bxAmym6zkT7zAQXVxNIC/DH3QgaDdsQ/I3H4vTrJ1casF8
	 2Y/WDH1OspFcyN2E9oIMzO6Tmwcrg8S0GXWLtyTbIakR5MCYffKwinvtuB41gU23g2
	 Kr6A4rppaAMnIgqykztao0l1kNq5Iq+1C0DEnf1/SkkzlqS21t3Sfgi/iaIf9xPyMa
	 wo73He8m8bj0e/3xedo6j2e2Kd8n6+OxnPkHgu3ET9cI7SW4atl8Ofyy5jew/tYeNM
	 A4E/3RxBDDnMbZXtQEpHAHbFUrJ9hkWYnOn3tLyBXk2Qu3Py0iVIyxwnB1wlP8Cicx
	 cs+m1k9YIOOnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B6E6C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166404005333.27343.15424109875967616280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fe5582e854b15ad3986d4e726e1f7739293b523a3fdc22449c69c1e302ab449
Date: Sat, 24 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664040053
