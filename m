Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7056387571
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775634933; cv=none; b=bxOJbFH17BXrvEilVZuMkuC0Jb+pNhY1OOGgc0SYSCHCPgk5EdUvXxiicpP87GSC/uNQEeGg7xuqL6Fe78OCMIU6LUNodiJ76MlVhmn44iOZukYr8ETl9kwI1QvaKZHHeoBcmpiUHPxjoR2y2I5eYcAU5FjNAzaJiL9ek67uH1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775634933; c=relaxed/simple;
	bh=Yf6v/KXTjDCBZuU/Rm6BEkh9nT2+Z72zuKM91LFpj6A=;
	h=To:Subject:From:Message-Id:Date; b=mZienbXIMrW7yRdtV1TBU7e3KOZ+eE4eUEGeWKbYJPrqCIM6iraGhf5eZxgMXYPO1WwTHMo2yfQJ/2JvvApsRja6mOrMBwRvcmXrqg2C7KaZ2DgZL4caBcyisipsUTnHT4Rw3v0nOBGDWnS9lWMc0gcfx9Dgl0IAjjZdGC9bsp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3dgOiB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3dgOiB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD804C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775634933;
	bh=Yf6v/KXTjDCBZuU/Rm6BEkh9nT2+Z72zuKM91LFpj6A=;
	h=To:Subject:From:Date:From;
	b=f3dgOiB/ZRPPuIqoC3ETJUEiedsF25HHHKngEPxA67I9rMVeU0Ap0iV1u3X1Deosl
	 /V3YxNYOps7eViAzffnm7WQzLjILcW/gd/ejKtZdL/Zq1UUxNbyB3gdMvPtYKPraAi
	 jK9lSVf2ICZYqUfb1o5+mf2iM3ZiXog+4uRoKS1Gdof6eoww8YgQc5P17qnwdYH8UW
	 5O+GeDWB3v8tZunhh1089OIRMItLInYr9dWDwwtGauETAkFS7voJhiMSwX73BCsycM
	 xjnDM+pXWsAWY67qR+3/t3uGK0x5U8GxvY05NPYHxuvAaNGulRGwQ7NCpQb2V/F8pa
	 VnF5Ll/eXS+RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDA9FD5F94
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563493369.4879.12496758850954878763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7c9fe0954ab3ee439d377e3f4bf1fa3d2b92b16532c36afe91a2219c59a58b3
Date: Wed, 08 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775634933
