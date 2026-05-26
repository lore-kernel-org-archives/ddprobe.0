Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A193B47FF
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779830554; cv=none; b=Wuj04GLi3CdU+NBi0QKwHdS9v+23Qk/nsW3I8hsPNDgcazU1mNLo8rDz5i3FZL1c0bFINYGZSKwh7IVV/yaxKOKmzsHTIQpVrTq5EbVFA3Qh+t+ZIiqnrqRbDiND/7laD3xZZwL/LKOf99i1RagvEI5M9HYld1iFXsjrD/BchCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779830554; c=relaxed/simple;
	bh=6GTOZBHUFyNMt4SkmQNCj6LNYm7X/tPzc3k4GjzLNuY=;
	h=To:Subject:From:Message-Id:Date; b=UcHXNL0T55Qt3g1KcUFSq6HMxmQEcHTwEKzr7vVNBvMO5XkZbNmkzkmgVHAa6h4s9hg+O+XYVxkHTmT9pMpHmwejrpxJ6J0TYoUjTgQNypqch9bTkh++CdD6rrUSZB3oV0hWInmltKkJ2rnImVZKDSORPZmeXyrs0Kv61Xka2fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6Kmrjtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6Kmrjtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7CFC2BCC4
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779830553;
	bh=6GTOZBHUFyNMt4SkmQNCj6LNYm7X/tPzc3k4GjzLNuY=;
	h=To:Subject:From:Date:From;
	b=H6KmrjttA2t0Et4DRZPJ1HJw8UayCxg7sdkyN64odVCjqc+FhxHAv3jEbFDLljASN
	 18KGd5ONex764HsNZjJ+feAi914jFIob0C9K22xS5/B8SfyNwGk6J/TUys3Xw+VCsD
	 plAqTG27hmjgxOn0M2E9edRAYj1+rwcsPts+y2lp+6OSGgq37HW23p2ROOaBntOCWY
	 58SyHvqFQYRe+jPY6yghzVNn0F8uF43vPzwO8fjOwpYLLKWbbdEIpNiD+AVb72EDR+
	 ALX4595qXYRIjeiWiOCHmW3gp7kNc90f36xroaHIgX++hUGsyroabmfh17Y+rW+M9Z
	 ov9SQA4MuP/xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06BACD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 21:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983055371.16912.3606561236982345681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222989bfc0ebce32deaea9b1e726fae285fdc7e38db1f1b6400d0d0667d6b857
Date: Tue, 26 May 2026 21:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779830553
