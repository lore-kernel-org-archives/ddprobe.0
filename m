Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE687B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D7DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674795185;
	bh=bgOW+kjUUWHkcZKSP32RGceCnCVlN7jkTZlf2PiXLp0=;
	h=To:Subject:From:Date:From;
	b=kyGs8EcMKR5Syj2HF6fEhEQ3eTsbmFBHff0ZFPDCmiHHeAbA3soGkj01ZOnTDVPPu
	 GX29iIOs54YqQgqI7Sv96YwhTqYykmUvfT6Mo/wZ2AZflhKe2U+LkgPfPsq8sByZrG
	 EhDmRkAEicCSY7I3f2x7U7B9EH/vQu3j3LwbS5yvaghc5PaI7HmsN7h/NJ3g5gJroA
	 Pk5Coy+bAP0+HzDWeR3aPsNIeCs5dPSqeDlS0N7NFZAb5Agx3UY8YkdaqV2pWjSJy6
	 5EoUkd7QM9R8lJ+udIYHtF2Hzz8PeZxyDF5Lo3NC1u/EpZrZnRH8zF7FTLh/3bthhf
	 8+HI1cvHiKfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F15C54EAA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 04:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479518581.4809.16040703285860249544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7f7a8444bbe2a4a2211ccdb9692948540120199c6cd59bacd39663372fc16ab
Date: Fri, 27 Jan 2023 04:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674795185
