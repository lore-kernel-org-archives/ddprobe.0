Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A5A2E8E0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756901994; cv=none; b=rM7WlA3Jz4Dag3ypVW1yHk0+wmHn6INHDEWe9SHTRdwCrjUC/CI25ZPoFYrDZtDraEVdczOxJprnStWQTyNRu1bsw+/88gShezSLiBMXId0zv49hLGUQNMLvGv+4iM5nUTlIY+XsirIl+BCykQyNcESdSEaPu82U1nx4hXtj95M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756901994; c=relaxed/simple;
	bh=BLvMqV3/InR7NJXJ4CWkwEpMYfgmclS6xH19P9g5E8M=;
	h=To:Subject:From:Message-Id:Date; b=PIVTI0F8QVqcRDQ3jbKAqD7oiPSJ928HveqIjNrvlvFnWATiKRvC+4y0woFKB7lEzinBXLc9XcQyL+J4VYEYZaleJWCusDYIImE6b6+mCJCz8itV9Kog54PkH3dZtDI2xeR+4SZBKmIAKyNKThcKKiva+Hqm2NDGJs9nfgWJwiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxCEGLr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxCEGLr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D0C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756901993;
	bh=BLvMqV3/InR7NJXJ4CWkwEpMYfgmclS6xH19P9g5E8M=;
	h=To:Subject:From:Date:From;
	b=QxCEGLr46rs/WNuuxwkCpAHr9ltMkbXHcKXSCIaepTYFNwXjSwt3XeFb7VcYjf9tv
	 3BuIW6Egpn3WgQ3/gMowBYIvCDV8e3QvBH/vooi+cqv9aV8lwZjMK2MPI1KEMy3YQw
	 gon17yqtHWPCMbKeFDw4k9OK/Payhz179H1vwQ08735L/YvIPEK52B9RKUrr9lorYB
	 OtL4+DoqyGB3bmGL4iRl1bCmrxOf3GIoD+Z4126bkv+KeTVOrdzDDyfAm87GrUiDCZ
	 XnA98vKlGMLRMNAOCv/9bB0xqmvcZvK2k4yVk0HIo/YUcC9s29h7aZ1xgrDg42TW3z
	 FJmZFru/Pr/8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB8CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690199358.18582.6350142300155039113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4639821437ac009609b5682057755df54336e988ee99f4bb6a3de9c25344243
Date: Wed, 03 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756901993
