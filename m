Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6064127F1D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F62C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689964328;
	bh=GYRxQGYfnmdsBS4FHuNJHr7oHszltY4Y/AAp7Tz//to=;
	h=To:Subject:From:Date:From;
	b=qP97+hqrtDe2x1ZE15OWD0bFCM5hKpNWZG6/BOoblDe+OGZrSkEARkrm2/OMw4Pd4
	 VHFug/Ks0OvEPLfFaTot9LfbKIB/gP4x5vh27fmkhT6pdB0e5ay3WMrl3H/IM79hJe
	 MmBpfFiUPG1m4i1Skigs7Sya66FAVXsA1tI9cMWA9jnP+qN8QruApu1yKpbPwwLgFK
	 fSm18cUDn9eDickOCGiNDPM1WVpdqgpjx4h/5uWoM7r0vkjK7Q79v5NcICOcd5AIRB
	 5jfg/A5hZtRkADgrFviMJ9dVXSjTa7bDpVwEupVh6fF01qnBIwRDqs03+HI9rLoEIn
	 71G4gvdcBStXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E5C0015E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 18:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168996432868.12291.8457049394285392700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c176d34874cae261f5492f7ae6b2047b0c92ed472afe1965ff430ca1bf4f59b
Date: Fri, 21 Jul 2023 18:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689964328
