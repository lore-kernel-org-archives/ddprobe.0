Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6225F1E51E0
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783412314; cv=none; b=nY4R0sJJJkoxW4VmAkOkZeHAm8iE9EmMaPv3Josm+jHloqcm8UelTC8dKbcG4B/z/cGsBdaR6Nii/O3hJE5cHdQuk6uDgEA52lAsHUB0jsAutA+1ezM35e2MExXkXhncTOoOTSEVlYL20WtrHOUPXBKHaKurvryNDqPxRR9RpPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783412314; c=relaxed/simple;
	bh=7eZZZPkH+Dn7jYO7j/UlZ3RPQTv5YUg1PIzpJ/qz4Ws=;
	h=To:Subject:From:Message-Id:Date; b=to/TLYdUwwd0iM8ve29YqsgYnfziOfgZRBqfvw38HUHxKQzbq7rGXNgZxag76p0c3okUKVh1JpiySLJbCzR4wLnGKiX01RQEBth6Hr/JTAvF4cZknTR3xTkzW9ZpXQAK8MNxbuzkUXKuUffrJeEdK3jp1bp2FcGV63YvDZxPezk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yqqv7lvw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yqqv7lvw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAA6C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783412313;
	bh=7eZZZPkH+Dn7jYO7j/UlZ3RPQTv5YUg1PIzpJ/qz4Ws=;
	h=To:Subject:From:Date:From;
	b=Yqqv7lvwLfrRpKZNKr28aP0DyFS7+NHs2dYihn/tFom3pmNGDLZJsdMjRu+5qUR/u
	 4iKSEAw2etTWQs1jzNTQ804WQ62iURrYNTscjHGCthFJzv2YPibeF49gfiOtg5Kj0E
	 Wf2M6dcXZnjQNcoypY6QXNpvhVGi+QyFvSncNK/CqXKXc49/EFWKdBbikvlVtwNIIT
	 SZDzIGkIctlUsv/+Dii/1WQ0Mi1Llva4aMKVnYz/syRyJJfQRc5HMnGmiDBPwSLlxG
	 ub5h/pxHl4ppz0jkcFiaQdi/CrJj0UPYcfnqW/1UK5qYigzZ7KMwBSu9SUYabbsYi7
	 s+mh+rSyuHqzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B56EEC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341231373.6217.7898818010415691164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2d9bb93a97d12d3d52dec5cc6e9a1f5eba328ff19f36490f863fa2e96df1e1
Date: Tue, 07 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783412313
