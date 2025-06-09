Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DF2280CD1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749455394; cv=none; b=uzarU3Ug1S+4dFmsG/O/MR1ptDkS2LQJV3Kq4Ki4EnxYJ8Y1xj4cI0ikM5bHA8NK7Hf5vh71/jB1yfQsS/S+HM/6rWzp9KbucR+OX1Mgs9vOz7hcxBcFd00nQBs3mWVa7+GrMoiqU4I/iywfFGpNknz6pW0vNSkcU3zQ53HtiVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749455394; c=relaxed/simple;
	bh=WBgYZlGywMSaDcSzqIFEBhqo9vSPtLQ5hcN99Mi8TGU=;
	h=To:Subject:From:Message-Id:Date; b=h909HJUw8cJ+MW4kQdwzs8ZGQF1w3yP918zzEQUsxAONGLZrhL4bxTOHa5Is5TRRlJxYPSg5ToUjGjhhco0Gs5XwNH28TGARtSnv4b+7pBbW9cCz+YjEuCkUDiWjp16xScbdTVXG8p0qsKhiUW+kMtVaZ5kBFmS8PnqyBhZ170g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHHjUh0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHHjUh0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB21C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749455393;
	bh=WBgYZlGywMSaDcSzqIFEBhqo9vSPtLQ5hcN99Mi8TGU=;
	h=To:Subject:From:Date:From;
	b=EHHjUh0QaDHZycqAmQ1RS9N2cyaIZyd3is4aSxsUD3QvgjS8n+j/xwlLd0RQ8KHZ4
	 ycHfaPXrxiJF76juzFmVXnNQYAvi60DyEi9F7MiRcYcMs4zdFjDYt4ytzYiHTVcf8z
	 hvzUN1LwP1nFyuhIrsjaGkoBEVqlJEnn9KmyaeOl1y/LSiOeOeak4M7a0O87frTKW/
	 ZImDUkOvDPhbdWAERUFaFOtiiQhMSe71fnFnA1oaiucGh4ar0X5p3nwGThnOlEcFMY
	 F3jm1riSEUWi7+K1b4AIyZlf25ajW2QZCNiGNegl584mdkql36y5iReL5fF4pDvahy
	 lH3Ipkz3L7pVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF5CC61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945539357.4730.9546165265028048400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbaf238012712bc1e1abeb5f764fcfe0ecb107c74c7f938336449fe00120d14c
Date: Mon, 09 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749455393
