Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202C8285C8E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773458694; cv=none; b=LWDR8mdfIFPgOPzxNAziu2Vq6qnkvFr5a8fOqOIm97yz+6KTSMIFGRT4h8ca/3YpQ6OO1Gsc8Yo4vYvMEb2tAhEJxzkiBhJ4p5Iyle9JtpaNGxz70OQwniBQ1yGGgli0i4yWErbuWMKdoUZDYaJ1HIVNaoRk72zQVomyyC4O8Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773458694; c=relaxed/simple;
	bh=2o8GlJNLqtb65+sQnWhYNCoOAHkPI3ZVkxGWIkXvGDg=;
	h=To:Subject:From:Message-Id:Date; b=K3VMEyXyDSReUzfie0UCEdh5WwzDNSUW5XPxfvFIeYv6wF/TVrOw006NLHLSTPRbitvJkXW1CTo60z9GLoMz7zaR2b3P7TWgL/+/7zs3jRbgKlHkCG7+qC+Au3uo7cioiQ7S1sqgD3lyixs9uop5GG0kwuT/JvBHZIj+JeGbF3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J45VJN44; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J45VJN44"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0069C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773458693;
	bh=2o8GlJNLqtb65+sQnWhYNCoOAHkPI3ZVkxGWIkXvGDg=;
	h=To:Subject:From:Date:From;
	b=J45VJN44qZNJWldAT9mSLy/l/fO5t4gahERSj/WpzbAd8N18+lWvm85iNzejviFhX
	 iNNlIFX53N4FozN8DE8QLoyQpesb4L2orRGMZyTSSIv8n/B8fdfCfbxcF1cvoU3PJL
	 qWSpAnkj1QkV8WVyVpGO7gHzBfSzyq2YeM9aGGdLRDejBUDoRWnqoCjnM3F9mNn4Uv
	 Yfd+s/LmSb1gFCfec0HLccyn/ExLF3d771klV+YZJY7X4utV4SiP4Lp42CEQ+6OLUZ
	 4qI8Koef/NnOlRR7dbDyAJz+dVN5oRq6AGtZrOVuV6FWr3NjdA9SOs/YcAGn7JrHs2
	 INrSyEcs9iFhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6A8107BCEF
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345869361.32064.5259030531294002985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43130d869bd0476e0efa6f5ffa54e713f5e0657eed00b5bd9dae7f5506efca47
Date: Sat, 14 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773458693
