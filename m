Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D476B1B4153
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748210393; cv=none; b=ZkgsX5t5yDC/4VHUWi4WG8dvix+8mqzp04GXyy4bRPcA2v9IUcfSfEGZgTsXPZwMRwrU4kKNhk0jwHFsyWPabSxaOjSHxNnzDfT39LWMerHZ9LdgDK/qsVIY7++cDOCW0rSAFALVtgIBID+XcOTu0OxLVqD9m/N7smywsrLmXus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748210393; c=relaxed/simple;
	bh=2R4tCaZ1cOPxLGjyLfM8IAbm4uMMBqwKf0hESNtJpgg=;
	h=To:Subject:From:Message-Id:Date; b=KtZrJkd4mOjmhmasNC6m5cyu61kbLDSrjFmihZ7WaOmahCS2P9psg9iMoYbINNgrPeh3OgIm3LyTMtjsiSn9dz9H2Orb2P3gWW5nkN6PpSLVyi/FabNYrg4odEmyyMkVg+4nzy2zJc6y+xsQTZapQD8wxOWKVnkCc6kEWg7p0sU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8huzDLv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8huzDLv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7CC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748210393;
	bh=2R4tCaZ1cOPxLGjyLfM8IAbm4uMMBqwKf0hESNtJpgg=;
	h=To:Subject:From:Date:From;
	b=P8huzDLvHTASW4HUPdS5oNegfLs+tEQEfUF/hy/s5LeQzOL9c8tRFfc+dAtI7AJDI
	 No7TZinyon6QZv5IO9FAIdl/hgoIj+q5LQ7DiMmBeDAyEG2e5v7V2+G6NbMGjHH2VV
	 C5kzmyZWHmcGuKSTLQ2hPrO52ovSSv1iD7rhmQcoSNRAWogk5OHvk+04GJNSyV0dpp
	 VBom+jL3/axmJQLb01ZFmedVDAbb41GYq8n/ohPHID2jbfY+1FVWfh16MJTJNya6oJ
	 6JDdLUE+SYk7MSW+drfCqGajWhxqkVp9cgPikyBec91/SATg0BVxC+QOsZ5qZtQgHD
	 z0TytJlzFAaYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA11C5AD49
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821039357.10447.7631501440300596670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab72f86a045cdecd6120febae05bff25677be662e29aa7fbf794a4d704965be6
Date: Sun, 25 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748210393
