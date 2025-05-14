Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E3727454
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747192194; cv=none; b=Gw2nJZ7dBUsuXsx97CEiCkdpY2vEDiSJOFf/njN/f36nH7wmSU1tSt4Ydepl6CzrgjPOjuaFVpR/MOJ5ie4j/ZfhQOKlslStaR/6EirojnskH4jG9REg3OCe5+Hn1vCpEvMCqPzM+QJGHPAg7LDd1Q13P0eCL2CzTrqgxhpfusY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747192194; c=relaxed/simple;
	bh=N2QgsMrjJVs1kS5/gkw/Vo+v3T9ImsATtvBqnH5CFLY=;
	h=To:Subject:From:Message-Id:Date; b=TG9blYRY1+Ceb3QhVP5ssLLqFaGjU+Nf+UaeQ3h0LajRb7iRr7fX+yJLzQIOIxlsD9KS5CsfuOBHu1diRWvE77KJ4T73Ze+zrRCMm4hMkC7J+axqKv7JP71TwZGivhbVe7N1XaizKTIEoR6r67cd2JbJJ/3vzi/bc6X7dMCrGzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ePBG2AWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ePBG2AWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53CEC4CEED
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747192193;
	bh=N2QgsMrjJVs1kS5/gkw/Vo+v3T9ImsATtvBqnH5CFLY=;
	h=To:Subject:From:Date:From;
	b=ePBG2AWngkWdtHiPaB/W6ZR99RDglJUdEsEzKOYazzY5IaLh3Sjy2w4UaUU2N3iWt
	 EFUBEuVVlHnAAr+RapWGDORysnIjtsDQb59OGQquc0sfhIXULIzTlrELX7txwUQa+Q
	 KysMIdHn3tD860V/3tgxJJfmHEFJlKZHj1m5grtCzPqEPv8Pf+Ah9KuPcZEaFQ0vX3
	 Aegs29cqc+2q23Xa6jpzJmJpDUAuhHKEKd4C23crEkMcwjpxlHJYzTJsJ6EdsOmEuB
	 gxn2MAWxdsdTHRLm6ZbWtj6awl7zyFFaFGmA62zfIq/YppbmOq0wUXOpLmVmdFjYXN
	 04jsTX18P0jyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C65C3ABC9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174719219359.13884.7027113745011106628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e5b699eb84cd2d344a07bd15bf04bb9b27b5f74ea8c3e70b9ae03a9d05cc41
Date: Wed, 14 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747192193
