Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA612E6CA8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781817394; cv=none; b=izb3VSnSR+DWmqMKc/kc3texWEw+m40py/wujZTnfjfS46z8ZyU2L02q+9/0O6BdeHh7C8DFe0o34tz4E2puqkLfag9Y+U9+LsfCNJdkWJ1onhtUYH2HKDDeL/uTp78mKLZfHfu5PbTMxjcdUVPUPa+nscVYmS3PQkQjOkR/1S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781817394; c=relaxed/simple;
	bh=51xTgK/aZA1G96AztJssbkV2XVdV+t6MFOdL7XYjhqE=;
	h=To:Subject:From:Message-Id:Date; b=EgV4d9OX7UDdFpMA8KeKuuUfrSafbfWoROFghT+J0GZz6rQV8nJBe3h5g2YfhVtV1VdOyeOnWW0aKQ4g+wWcSExJopibvQStBFZ+ud+J44TYrcV95dRLh+l1Nmxu5i450Dt1vFucpqUbqRZN5cSdkvjVPamk1sjCabf0/rncJ8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/LGcKx2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/LGcKx2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD643C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781817393;
	bh=51xTgK/aZA1G96AztJssbkV2XVdV+t6MFOdL7XYjhqE=;
	h=To:Subject:From:Date:From;
	b=O/LGcKx2AEkX3fr6ltg4MRAO3YI4qAUUs9BFKheBkALumNrlejLRioj3y7G6UNOYL
	 nrdzHyMezGvH5NiFhSnSLZvl0MH4rzdIG9HEzj470Gai2RjAJiLXoE+mFb6H3cXFP2
	 wH/abhaWiLfNQ4zCjKX8K5Kf3yBZjLeeTKQyPTBuSgM0ciD7MEko8PBaywnV5IB+VL
	 ojaXElHL58N0J0NpNZ6Gox+XUdk8p2cO/Eepf4O5KookAOrb2zCucEXC1D/ppRcbBr
	 bZLwuguqZCDn8nRdhbqtMam2FaXhbAhg0y/qNcwUbnV4/HpsUlMUMoqaAjRjQVIdnR
	 4/qyEFL+pL3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9CECD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181739369.8048.7257958580498980468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5fdcedd4e0979773f53d1a2e0c2d3d595c380071ba53d369dfcdd67476bf983
Date: Thu, 18 Jun 2026 21:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781817393
