Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E30E1183CA6
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750631394; cv=none; b=IM6N6ByK1VVwS9KpZ5fC5ORDxl694EKVbLMUyJyoR4L9Owyl5RVWZFS/itHvG4GYAOgLhRvSkxTfCtcOu2nwGy7VEprxXuSO5BgmIKBa7ZoLbqAtUphPkpYgG/KMv9NgT1pR2MCeZjegWL15CJB5wUILFL8vVmU7tfSvv8tsTxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750631394; c=relaxed/simple;
	bh=DvEGRXWpk9iSg2n2a3zBIn7WnA1XpotqMvX7a90XCvE=;
	h=To:Subject:From:Message-Id:Date; b=ZoN8g05wkjUGHg18q9EsaginZIPSoC+vP4p0kFaeXov8GnAFWyNbS1tabYKfTxvUzxATYSLIwNpQa2bxBkEWkz1lMZWBbMDmgbOP57Zk6k3ME9V52WhtSbY/SAixJ/RuNYbcRBaxOSo7jZd3pwzMB94Jy+gZ9hXxqYMpW9bDPPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmciqmm0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmciqmm0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F03C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750631393;
	bh=DvEGRXWpk9iSg2n2a3zBIn7WnA1XpotqMvX7a90XCvE=;
	h=To:Subject:From:Date:From;
	b=Lmciqmm0MslU34POS4R8hcxapwRJ8tLFijB7hrvEtdbhR/06u2AsccEhHkunkFb1/
	 4Wznu5fX5efLgDHPrn1uFIwuqWNDc+ysa5qt6H1PBAI/7Ksw8sI0LJZdGvXdc+41gG
	 cDbrSLds9e9fsSUCkcQ0GY9YlZSM1iYRp+vnLDNuHCRNcdLu3S6XC1n8hZgIpQ7Bin
	 hOxbMSrclJb8w9+suqriPc3o1BtiJJN2/IHqJomrijzNcoAh5eT0fW8A0reFuWffPm
	 tm6AseBoViD6s/236hgeyQf8D8cKJrh835PZAoflOABHaxntvhY5/RnVxnk6zT0Phu
	 lWKV0gqo9NdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95660C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063139357.30952.8404986864998754933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d17b4f3b7cd09268022e5b1803959588865039d7ef6abbf443eb447bc8b047
Date: Sun, 22 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750631393
