Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221AD241665
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761083994; cv=none; b=hbMe8BpZJ36O35iusa99bx99Q9E1QowxFnYslzXP6oDDO7liSSTFbISyxx1v7Uok9O56gwDBh7Gu4mjm+D9A205b58444QASMfoY2Sq0En4e5KwP8Go10w2SPfwO4Z9KnR5VxXqHdkQaDe4GkAuLRgZsb+kRGxnXI2ZlP/Dxb2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761083994; c=relaxed/simple;
	bh=BtcZEfpQSbYDmBNCfxBkVOnkKPk5E5rNyeJR1/ajK0U=;
	h=To:Subject:From:Message-Id:Date; b=F8Il8CGVKSk3G6uC3/3Gb12Jf4wlbMQcSsUSAwKEn+0dKuFhzcqBVd3CQoDsWK3ESVUM+WEC4tUSFK5naosJDB6+gIytZ8MPJaGizgckJaAt0ijrJwvBZuLqbNGbTUK7pmSCxBrYXklNt4UaLS8nrH5Aal6f7d8Gm/wfITjjFIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ag3+iAXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ag3+iAXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761083993;
	bh=BtcZEfpQSbYDmBNCfxBkVOnkKPk5E5rNyeJR1/ajK0U=;
	h=To:Subject:From:Date:From;
	b=Ag3+iAXm0ZlL1V6uO8vJzD0X/7O16Gby0Wfeso1dXU/5v75O4pfqZhXv09jmS7z07
	 5mDokCVNruUbOyPlxNWaeLA35ZJnA8q2Zd6dRx/+fP17JGRggUeCO9IpV4iswLSeS3
	 seaLPwALRT8+CDtn8ZZNuNLLRZ7K8366C1WDzrYcyNzZ/KP9xB+1GTE4EANcWoJ4SM
	 kVpWsAO1fmxXENTEovksRgOmTfyABnnCzUdWLdDaA96AUfsLODJXcZsWFDNQ3Ls/E2
	 6zS1C4XAfPHi2IwPwBwry7H0jJEBrxxeIyXLRgJA+Mk/fDy+NlSJVU1ne7zI2K+WzF
	 9duz8fs+/zzVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9097DCCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108399358.32623.5804437353678377211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df06174702b812504cff78f23bd02ce4523ba28f9648809fcb7c5531e4df7fcd
Date: Tue, 21 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761083993
