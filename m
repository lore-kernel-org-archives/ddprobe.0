Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4840614011
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 16:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B778BC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 16:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692288788;
	bh=FHw5wKsVrwDtSQCnRU600PA298FmYClkV3yEWJzeI8U=;
	h=To:Subject:From:Date:From;
	b=NueqIzGb9yaQ7GssJn6PDC7neTq1FSdwBIVz7Jb8Ifr91hJySHr2SEsLxtOWOMW2B
	 ICok1znsBT2s81oqyfDNMOXhynvx/hJAk3WOs1G5zQeTvc+5pFCsmMwue4KyPIoy/B
	 4g9MmqEOZZE91SOoAkzKWp7zPgDiePxGnlvPSCvfgTZvqPgV7nvHfhVYLHqajAVtMV
	 2FT7j65tp+HzkroD1dy6k0sEcvOH2IADndFING0NFIN7C846xl8JvvhZaA93CEzeh7
	 P4QCn/0tPTuxYlOK5EvxKOLwSfuaDpxODE2pt0+ziIjj1cKAVFt8LMAh2kPpxdTMfL
	 QnNnf6h99oHIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B6FC3DA4E
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 16:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169228878865.22685.4048799673482711349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78245c63d892fa334d82ffc36a3bda8045f30e0476a7e888c91e410d5aa96934
Date: Thu, 17 Aug 2023 16:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692288788
