Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D92230D1E
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746184194; cv=none; b=RjgYDDJEKb2HCve4UrwQ09bD48oVMjwBu6IGnp+aH3ceftW3GXqfYSK/FoIFmUBkJe4a6Di23HoQNnXV9D4TNX+AX29ZGjqzVodOwqis+vvYJWsqyByRz7RyRkli8JL7fMBro2hkTICBe04CsY51Hcqyv/oR29nyLJHI+yNWYvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746184194; c=relaxed/simple;
	bh=Mnty5pil2kdVluOjhgwHJjPb8/NWar0Lie4hFhIzaxU=;
	h=To:Subject:From:Message-Id:Date; b=PJDpc27YNso8X5FoyDyf8a8uQyUCNa2PfIWwymh3m2BxGwEyuONKgkffLDWtk/SVfb6UiNbrRS+LEX36PsECWdMlR6IA9Jt3OFn+uuJEGLpsmPGqharlmFAnH5IycJ0P+nLsURK8gSy59UJqh40VCPKS9kBEwcDUbz85yo5bTQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7sw7fV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7sw7fV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F07C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746184193;
	bh=Mnty5pil2kdVluOjhgwHJjPb8/NWar0Lie4hFhIzaxU=;
	h=To:Subject:From:Date:From;
	b=K7sw7fV85gB+U5vIvm5fZeL4IqNIZ6FxZ+0IYWsU4xUMj3mZzKou/3OvHfgcG5FYC
	 TNSgPgkNayVr0NNvqMdYTrJmI83o5kVLKsBoz199xbAf+LWq8oBcAa7auDRcvFkasP
	 xFB83QwulhPB8rC4KTwsqauBpVX9EyI0p2yBD2mDlSMp9USp2a2hU+yqe2IorSw3mk
	 W2J+Rr6ugnPuUMvbcKqdXJTaCtUBnHvBsMVmth5DJ2BHBpsfazaIFUwmEFMfIqJ4Rx
	 uFfBhi1ZNBg1WgyKBw893N7Xj4PjzkcyZe6PQ4sLLu8m1jQSIrlPJQB5CWoTki/yMd
	 Z+F5fpyLPvaWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DB05C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618419357.15163.8970445024986663344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded268967704494ceb732c9346bb9789d784d70344f2d01e3ee6c63e111167b4
Date: Fri, 02 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746184193
