Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D818814
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 07:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qi7yUF6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA3CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 07:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703316496;
	bh=bxNtQzCR5iTJjJrpAcMz/IKpKalIg4HN4ICbVUTFwDE=;
	h=To:Subject:From:Date:From;
	b=Qi7yUF6PRUf4ciiPPmQWWE6Ou1LC6SoGDArPmEK1bn6Lrn5CpnuozGd5u8uKaG85b
	 SGFcgzT/fMnJFaUWYsY8H/H/EdbLSFI4vtDNfL3kjHDdyTJnxa0lJI14QkKzBIUMXJ
	 +qicpzyQKlIx4qMR5Jvlfm4D8m8fCfgTbqNqqjQr02bDgHZQ63pbLFHOJtwh4o09XA
	 WiWum4lGu5S4ANiBAWgXfsDgL5uFK/EMwPlUbu8WT0Turiy1m3jYf3Q13nAM14KLcs
	 7ahL+ezPxEsT49tgvtTvYHIAjMAwC2ADIQDDCNtc0oJVhhIap1BnkxOvSP4whjpVHA
	 yEtTH0/lIMelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6104AC3DA6E
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 07:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170331649637.27035.3694750892352991993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9974711e3cf3208f72df12a94757f42958ef0243810df48a11d0036fdd57c66f
Date: Sat, 23 Dec 2023 07:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703316496
