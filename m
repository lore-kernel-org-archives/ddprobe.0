Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291AB10EC
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D504BC433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683200465;
	bh=+Au/eTcas3AEZNm6T7/SZHTbYix9vMITe/WPtd9OfBQ=;
	h=To:Subject:From:Date:From;
	b=nFP/s/t245QOvYx963LWKNP4U299Kz5TWpy4I6opXB8rrePZz+zlucSI0ZMApHCa/
	 va61bzS80dRtUiLk2sEz+1St7HkWNQvRfkfep0pcumOcqx1ubJemY4Fbdjhdjr0EQy
	 1ZnZ930Hj2I/ggEUPcj/zupKV7B41Ofh0zltva+MyOphmMFueWTuMzyFOF3r23ps9B
	 lBNTCsqwf902Nj3v5RKvE+MEbTBmgiRbtA2F99QF6DDBrWHBZMsuhdRRvKQaGrxoXm
	 ajDiVU7xoaki7SuOaN596DDb6kKMIGhoSasCM0/8w0qKrG+A4LYkZth2KMbcy53gtA
	 u+q4ZtATscaNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAAF9C7EE21
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 11:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168320046575.26550.1628885553754888033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b09d50a5ff9e8ef3df6cb644fcfc16cfc3613a4e14f163e35081d8e1ecc39c
Date: Thu, 04 May 2023 11:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683200465
