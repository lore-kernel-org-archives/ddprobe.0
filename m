Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156848BF3
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6lEP/ax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8589DC433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704691696;
	bh=NNkAuxdk1dUGQGpk7hWIDx+jlv0f0WUKOFmltmGq90g=;
	h=To:Subject:From:Date:From;
	b=c6lEP/axZ0xlyuZZXLnIiZ0dEdMnkGd6xNmO5G4Prj+Ixmhv7oj0wNlNxNZFEtxA4
	 FHVpToviD/ON4NoPKodpePLC36UE7R7t7KczYSTM5Mda4jXQlwdn6yGJZNLOEUtDFb
	 JfcOwcIFe0EnC0eXbziPU0iwrdBZvToDGGeivtHZvq/aK6hKRzE/QpR/MuqkV6zzp2
	 82wP02CWNPHr2aKH8j+RhAqAE8HfyxHuLMfV7z1vgX2gzJHw9Tf34rql1Qrk2lZLo/
	 5sr03loX8n2YdApYEq/ykik3DMeyVUIL3kU2UPmlbORwY84X2e7l3kiY8Mox3mTETr
	 UKKsBb4GDeYww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6761FC3DA6E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jan 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170469169641.10502.17524889575227545203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212174e10c430229ad3ef867934251aaa757c2befbc804c21b377000f13994a9
Date: Mon, 08 Jan 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704691696
