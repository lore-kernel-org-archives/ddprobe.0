Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BFE1A9F90
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784440714; cv=none; b=qHJT1HCZf1GI4XlKeFrv9jIwYwaNWZ5XBY0felQFqFKf5biBEI2NmVZ+gebFUo7CN9sX4W9FG4smcEA9jtzUpojI/yQQ2MAWcH62e/LGD8O8/UtpCHCIEbFAg816UAx1iIDi4i1LpcXdWDhAWOPHRlAGNdjKoA7sq+Ksx7aexMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784440714; c=relaxed/simple;
	bh=QYAbyVnDqHCmjGKacIISx8Hvz7maeI/kvCGvqGQA7ZY=;
	h=To:Subject:From:Message-Id:Date; b=Jr2MdPszVlUdvORArEUBJ3IbTIl0maH1uL+P+0v10c/CyNSZgkTzh2YTp2k6/JMYKTa9mMdoxeeZvkGzgRuKpv1fBZqi3O/xLw+bt/42xv+XKFR2naBEIoVrB3n+KIMCT5PZuxdbOe8LhYsQWgtg1+5wvfQFCaN5IO9jHK0VRPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2+YwpWR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2+YwpWR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17D1C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784440713;
	bh=QYAbyVnDqHCmjGKacIISx8Hvz7maeI/kvCGvqGQA7ZY=;
	h=To:Subject:From:Date:From;
	b=k2+YwpWRranVit8jDt/X+R4eYSq169j0f9ofOD5qmu8my7CGHjAJGuIgaw4brbE9z
	 gbVvQL0iA3+iQ0V1EhOAH+ISSS7nXi1BJXz0YUO64HXp76OnT5/oo8R7QFVLHrPBee
	 D1FU/O4y0J2ueroqPNOw3ao0A1SomzMhNquOcum08cxG3sTkVOhKVeSU03ke9ZK/0T
	 YqBfPIL1r7OPcTg9YNFdziJqPUE7jcCGwpR5glZgXUCIY20fpGOWrjHFXTkyN4LPtH
	 4/0kDcbFkAkY0ZaA5lR3Sydmmw4LqPbLeMLvV1gANb2YLOrHBEPB/FiI2MGAprSxOs
	 OdtqoCkuIMiaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00E9C4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444071368.28548.4788066325256881897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6068d638331fc2c3491e21e41bba37363af2780facc7de20a5a1f822af28e5
Date: Sun, 19 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784440713
