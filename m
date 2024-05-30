Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFD817C9ED
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717074863; cv=none; b=rUqCvaObofrxdAGJ6YX+VnCOPWO7OJeFXsyKr1V0LyLVTDbX2Daq+0T0aUAm5QbAZf+bAqO7LRgPUcK8P+E/IacKvhFHCySCfI7OOYVJVqSq1Kvire7pbZLYjOVhfPlaxDziWvGAiGLf3eRJG2MtOSlbDyhdphk8YzlyesFlIcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717074863; c=relaxed/simple;
	bh=C+Xf2pgg0dRPDl6vib/+l/9UpYEwFpOi7KwtE9r/yz4=;
	h=To:Subject:From:Message-Id:Date; b=ZD6x8VSagMrOxel3LTk4B5jwSvYhuAWB+9eKLnj2G4USv4FOHQ0w8BIeAEVBY4Qa2vhRq07Sne38raIwFg2vP6bKsv/+o5BKjifUU3KBiQlwPheopWoDheCuYbSxYEdT9ky3S8oKbVX3Vx8UB0EQLmHQzjXmaHIyRmJCZPPysa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZNr3fwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZNr3fwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FB2C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717074862;
	bh=C+Xf2pgg0dRPDl6vib/+l/9UpYEwFpOi7KwtE9r/yz4=;
	h=To:Subject:From:Date:From;
	b=uZNr3fweHCSGGv0N3qC6maq6jJjv6k826wteaplD1elXbFoRPSD1vsUZW5Z5zPacf
	 ToFzzW/g0eByNyrmestYVFwm5nXltjQ8GbNpchWypHSBWRjeCdLnMcsge5553l1Dz9
	 pCJNbhbo9S5XOE0r29Pye2pt0uGBef7h3KwLh2zp2b4XetwoOW4S6zRE+oK/cZ0czG
	 PANoS3bNx8gsG44m+APj7cLxKJnFw0nJdTM7EDsup/d8rT5AAzpE1a1CmMacOMu9Ri
	 ceJhcS8Nr+Z6tNIcDN7+A8GPiLetBRe4GpAxaLT4qveGYZU7F5RhesVEHdIOnK4dYj
	 JKY3aOM3DNYrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AADC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707486278.15546.15757842487883515145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27552d02992e4948fb9771fd9d3be225247eadd6a831931529c5787e9921b67
Date: Thu, 30 May 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717074862
