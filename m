Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E326F4430
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747811394; cv=none; b=FR54c+xh6uCY0bfv0AXuZ8l+4QdBrssPMqCJmHxqqNvlVAakIfm7/oQ+Ug4GDNvfY1fmgw3WNvUTBTMdUgByL/SYHJtW9Wt/4OsYlKN2d7UfX97PpUNu8bSth2MgurUOiLLthDvrPj17IqZDzBgbutT/5kOLQwMRAdsTPQHZ8fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747811394; c=relaxed/simple;
	bh=hRqOakxmYF1Ri9ZfqqwDLBOUStlxFTCcArAFpVxTJcY=;
	h=To:Subject:From:Message-Id:Date; b=AFAObpsZN1jkuj3chodyAr99oOINGGSHEWOGECFeQzBCd28RPzeILuPSxTo7srDstV6WkTSsLg+MFWHFhSuu5RAkajfdoX9k3DZSCvZIlY4JzMlldRSdUny6gkeijyizwYEa36/X4x/UlBzy9c6/I8BRBqI1xw+SqoP0U3xwVZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMOXUZ22; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMOXUZ22"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37FAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747811393;
	bh=hRqOakxmYF1Ri9ZfqqwDLBOUStlxFTCcArAFpVxTJcY=;
	h=To:Subject:From:Date:From;
	b=dMOXUZ22J9VqWdpmzNzaOe5I+k59w89c7AUV3RHPyeI/Scn4MzUznkbfVKwaiNp1C
	 CjzpzqxMOPzlq5o8O6qyj3mi0a6OLmcmQ6kt9wsHR5zti79AQAEZt83Ffab6B0PzaH
	 604LNtdd72HOk7Ig9GZA4u6iLIV4SinAmiXs8C9PmsVXvnDVbV0PKDhVkuxc1p9bCW
	 hvosDN2PWN89jbPTdk1cPrp9LyFNQqYOMveBgkhdW0rZpxzqNtM3a+nFy5UUg5wt7i
	 sFKK5YU4kFjbQ24k/ypzG3lvq7x7U0fvTLfVVMH/DkiPXF7r8qfSrgc5liKTqfqcUu
	 apnr6YAFDvzbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944E1C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174781139359.5796.17309650221560087019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9217be04f108779e5f7e1603eefe23c3cdcafd4ac5bbec8e83da94ce9ee794d3
Date: Wed, 21 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747811393
