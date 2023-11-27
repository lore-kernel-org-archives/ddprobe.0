Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053CB16416
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hh+Ip6im"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B43CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701088096;
	bh=FPTY+tPp/uzcBQ9Pm3umKXqATscfLiWMWPJ5u0uYGpM=;
	h=To:Subject:From:Date:From;
	b=Hh+Ip6imB8uxOLOcvSq1m91OYHc1W2ZwIFNHC50Uh5lzUC/IgNxhuuuKgPZJaxEIZ
	 Jabxxcw3wMdkomzrrAJlxyVk/AKzkasggavd2maqm9N1oS8/ACo8hWkyCHsy/N/QYL
	 RUtxn7Y1SSfxD7NFEQ0px1tYjsrs9sNUjBfGzYgaWoipJDnBOYNtm+80UYvMpr8c5d
	 YcZHJ46mVHqQVvChhJgOBc5Jmp1TRIji8uvcftvygMq3K67gSIWUSZogBVFme5QrM1
	 LkiF2L7IfkiP3Hlf+o42VHoucOp/WTzgMtsRPBypO4Gj2TirfPWFhchUf+MK6I3wLF
	 5rJBkQYGw4VEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E2FCC4167B
	for <ddprobe@lists.linux.dev>; Mon, 27 Nov 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170108809637.19860.6557139045242917303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7020b95ad16eb904c3bdabce9b8153de6e03dcad4be3931ba3d9e6163f97bdf7
Date: Mon, 27 Nov 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701088096
