Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0292E975E
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779045634; cv=none; b=TY+JEcZZod1n0/r2efgmc67vw6tpAJDf3KvHjGChR8tSt9HJJLhfj2gjX0qw/rMjbIH6S5Udkm6cPLIJKJ7H4DpXIEduWkexAxPecoXfo7BpxZ8wwNvFr0P/uDdmln1DL0djI02pPyHiI+ObfD0GUY6c9dD2OPQF509WEjIuPmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779045634; c=relaxed/simple;
	bh=2rCmtJOGqbbJrbZsfp0Efj8a4m3v9cHF8yOUYjj7xCc=;
	h=To:Subject:From:Message-Id:Date; b=Z7i4RpytQ6qudqLpzLyBw9rJzYsl/TMFCYRmSgXwa7DWYwUYQH5UNMbVTzF776prGwTaXmmpOC3cbwKwo9j7GQwcsz7EmYPLD1XNAlJ5Yh7P4RUuIH8W/enXdt6uBF/zu+zN+5YF8NjfaVsI2UJx72jpLHhf8H8XDdSj2lzPBsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jp3O2ES7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jp3O2ES7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C07F3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779045633;
	bh=2rCmtJOGqbbJrbZsfp0Efj8a4m3v9cHF8yOUYjj7xCc=;
	h=To:Subject:From:Date:From;
	b=Jp3O2ES7VPjeXlNpTT/DrMz7zVp5x3jCKW2qf3w/k34uCUlhDRy5HHod8hj1vIikz
	 tw6Bt3+lHVGktNO0p0DgpcBpEGSis+vVqzkdno/dsQeaDTYvzN/zOPZIqo3KTOAqf8
	 Kpl2Alw7CZ+wE+nxr+ENsi4lbGag9VgduXuSh1bZ4BfkZBj7F6nsx00QBnjVh68VOh
	 SQ5fDb8QokL3y6JnySC57AOlRAscsaWX27gAxoOzhDePTBffLiiBkznjZWoIZvBNzN
	 UmD6nbnaswdcjJIXkmyejmNRBnv7UfKtBEFuTtSuSH3Ixv3R46kG0vftcO7NESvCxa
	 75D+xtWCa711Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1755CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177904563369.5907.15371179994817936959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abed6ea4c47e807c2e2b39285592bdc7d11477090718a61b13ccc5d3eadfa4f
Date: Sun, 17 May 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779045633
