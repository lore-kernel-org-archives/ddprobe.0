Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3461221FF26
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769985834; cv=none; b=Qcv988mMP/ux4v+DMkgpR2z8jHPc6E8laY9uQIGB8iUfmuHBO3twy9HdVggW7/uOiIF1dvNZRO+MBWXtiJvaWqoeACzv9+V7fHlthrX1xCYJJfShdz0sYnFjMC7Ip6jozIrsEIxGbPU3Mgr8GAMfxFfCuCIG273uve9uR2ErOWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769985834; c=relaxed/simple;
	bh=9rVzV1BvzfuDCPd8/bgib3bph5DzMYjRQn43WwynnxU=;
	h=To:Subject:From:Message-Id:Date; b=WbTU4tAeissHSTECwQDpFTnjE6sc1N/t7pkASLoOt2lErLHvPUxzm+Td32gLt1qNq3l5LtRW7OHqWAUtj3FtydRBmo1cGwC0advqdiFI+1JwCSnCEi0h0qJMt5Do9nTqOyLEgJO5JOLspV3th3gJCDsdA6boHxVwb1/f8LpNsKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbQpB+hX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbQpB+hX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDCEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769985833;
	bh=9rVzV1BvzfuDCPd8/bgib3bph5DzMYjRQn43WwynnxU=;
	h=To:Subject:From:Date:From;
	b=IbQpB+hXrk/FXlRwfS53BKc1yS8Yuo6dMsAtZ0ImlsAcfyFQVfBsdhFU4r04THCHe
	 TYQM0CjcyBWXkLJN/Az34fWg3Ujh5mXHAXBZYwAadcK1DIJlaGsKN9F3zbvdtLPUaH
	 EIpJbe8ZQgVGNztx4w9qTFgpxMZJtYGYp31VRqzMsQGYGoPmlShNW8n3YY0EDBrHRB
	 VU2Vph5TwR++FKHeUWmDogSkQ2Uild4YorrUh4HvreAQBbVZve31kIX0qk6m+AASNO
	 KVK3J3QpQl82AyLIBGqEIbzwF547llA4apg2sfXYok1Zx4hS7BOADlz71A3uFTYOid
	 OMaaE0bRrTDxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D30D172A6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176998583359.3562.6524559141436934159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712caaf2c30ef987bdde2bab91c8148714f1ecb6dfa79f09f7569683df570ea5
Date: Sun, 01 Feb 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769985833
