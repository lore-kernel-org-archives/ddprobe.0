Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2C7459AF8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786140634; cv=none; b=A14JtzrqnVK8OECeFYWE/cP5chrabEm+JiotedV24ZfSJWQT/P91aEl+DA9jKFkHsolg4RQ6wV6xrPNF9utI9BFmt5QNOwX19JQdKZ0pVJYsbjx9VkWz3aKwstz5SAMYdgGa2eGwJUHspi1XZ4Iqd+9FckLtLHiy4YEAr/cb1V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786140634; c=relaxed/simple;
	bh=Zvn34gpqJWKrCVCfCdu0vn+HNVqINdSM5dWxymX5iZo=;
	h=To:Subject:From:Message-Id:Date; b=KvfoFN0oRFVOgY1EJtu50GUCcRlJpaUGBpDDQIXkJJAP2AoKU/C3BdkB6Fkzm3x3rPdsmqiRQZ/bdRc9glkvq2uIuB6i1pFOnt9/2OZ+vlWkkYHwJcd5E66GXOzXVyONDSy/RWKnOvfAn+wVpa75tF3AvOor2Q3YR5siMyCTKuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgfTm6Sy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgfTm6Sy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3C7C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786140633;
	bh=Zvn34gpqJWKrCVCfCdu0vn+HNVqINdSM5dWxymX5iZo=;
	h=To:Subject:From:Date:From;
	b=WgfTm6SyLgsJ31XXL6DnEvk5jCaNEaxJ/WwVLOAsxrh5QFkoKzmLcpk287WiKzXmj
	 xris6n10a6fYgmdnKm8JoQumQWEzToSFpW3TrLJNOsTEMVFgFM2PCbtTEyO/v0ZUyz
	 8LPQfp6m44NkOpL8P2bVyGoXTjrnWNZhZGJ05MyWcLU5xMdiC2eY7ijxU3u4LFs4HT
	 f++u8uKFWDTLTl9EY4DYSCPlhbnfuc/HC/SULRHZ0pmWXxiQ8qNzpJQ59ZVcKZD/ZN
	 SLJMamLvWsxmb9ICex64tIIGIMfPqM4VuvGnZxmCbA/FrAoEZZvaC8+WYKF57hVKqn
	 1vImExGl0Jt6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF56C5AD2B
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614063372.24827.16570395401219742271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58fac0afe8e17e51edd90e233affc32beff746946f89ad448cb5ad0628d797f
Date: Fri, 07 Aug 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786140633
