Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440C913665D
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717148663; cv=none; b=hTKba/maUowcgvpOXk1vLk/UHM93eGVjRUtIYbHoZ6txg3Kx9jAEo2QRvf+qk7X+s1OWt/yVJ4SRg/61D+ZNSza1nE/G9z3/xHMHyTzNgfrJBuDI44SipCGm46sJqIsdjRyHUj2Agt9iiq+4d87jLVXGB6xME7o7rGLG9+PyD8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717148663; c=relaxed/simple;
	bh=neToiFZnsG8Zj2qbgEK8FewZ/p1aSuYVpyh7P83kvqY=;
	h=To:Subject:From:Message-Id:Date; b=J3Nj4pHoqPTh1nB29YbItn5bhWTG9B3HkRnQ+X0ikCb+MxCZfYbvwj3tOXkofnWT4iJ4d/rEantC6em/N1FcIOC9SgZk/ePelP47vBBMimEkrGVaRoHrwRf/g9WOCqD1BaWab/etXqVICCPkOlBru8qJqdNMxnK5hKzoI6tgZbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnbOo/RH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnbOo/RH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9052C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717148662;
	bh=neToiFZnsG8Zj2qbgEK8FewZ/p1aSuYVpyh7P83kvqY=;
	h=To:Subject:From:Date:From;
	b=QnbOo/RH7ymc1C75pp0UvuhrRXEfg2lDRYbzOw2+fQYNfaRX1f8TrjNyKP2P6hfQw
	 nCGaMgF68jVddB5lxWfP5UMZ9C9wTnnTF75VCKwWVnfr/tTeROOKtGoFJNELYD3afm
	 1y+g2jxx/qbT5tCKbod+bz+MGOdQSE3/gSw//Z5NaYkn6vYhY/2asEk2Uq0Xklqtw4
	 vcMC48yHCQSuUMcEiNY7377fqwQ+BHheWhxZWwel3vyFwJ3bnP5f+510Vep+3Wh6Ih
	 vcKlaroNbxyUE8xS8/jxeCHheQk1uA4zHYKHO/FiKfAQwsmv4Nuq96wrbaenGkAMzi
	 gQoKfw+pONuOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1AB6C27C44
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714866278.987.4468069495066442853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b413f20bd4a5cc8b632cca770c522d9274ad528f219c4eb746466e7047690d9
Date: Fri, 31 May 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717148662
