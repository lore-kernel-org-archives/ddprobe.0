Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7366E594
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 21:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gh3a6164"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820C3C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 21:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701811096;
	bh=99cm1IpA0xSnSBZgKyzZDTpNyefx+gVZ/sc3OV/oSW0=;
	h=To:Subject:From:Date:From;
	b=Gh3a6164cbs+fcAkWdShsDB+D8tJaRR+RlVgXMOM+maxdvlfV9+GZu5R6FIDQ2gKo
	 nZfV1VG2aLLbevwztS9ZgvS7mBIyL440GizBpIlqWQBJ+hgnleQPqR+/hGfKR8U9ro
	 QSjVA28a2c8d9GmQbU/BAr39mjs09i1mu3JIJ6Co+fnTL1klq8RH27ovUxWeo/n613
	 MroeVXtzfNKQMNegniBLyWPdFhxPql5dM4q1NfE5KoK1Irv141zalYLzIj9oHPqD2J
	 vKnonMw10gZ2NmiXHiVV9n4z41zmIA5ODAfwj4DVP7AaQfVVrFYWiKVUJ7I86JCRGL
	 61SWw5TfLR5+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6804DC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 21:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170181109641.352.12509808686330725901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c99e183e8a7b8c6fa85a659337dfe887c64b5142a25866021b509935b8f70de3
Date: Tue, 05 Dec 2023 21:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701811096
