Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3753D64
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737997555; cv=none; b=L0IW+2jpSzSwToOKTb0vVeBLpUbn8lBVS+6ptdw8s7isN0ax6QIG5y4eP62HdZKywDTQYOT0xbDvmPVmxvZaM/oqXaq2jBIijZZiwj1OKptEgWQWKPTm8jucFg+pYQBrWLaxjpxKWYjpn3vsZmTGzp7c+MQeBYjhv/5c0ti/53U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737997555; c=relaxed/simple;
	bh=/Ez8pvlncuTaML+A+1/WMYwKuOgxXNNxwfj45D1Y24A=;
	h=To:Subject:From:Message-Id:Date; b=jpvNG6RGpPkqZDoUgjFxoJCl/2E6++Clcus9nWIdEjP/fA8RX35AuaGpHpLc2sQBQxlEdPU4+xLXzM8GKWj+a47N+6lThWqOnTxnlmpmObzJWu0SOkks3tvevXdEkfiVG6kgt6YWCGbTOUn2lyP5pOxgCRkfh0InyJa+9XtWhxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVskL8uC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVskL8uC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA5BC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737997553;
	bh=/Ez8pvlncuTaML+A+1/WMYwKuOgxXNNxwfj45D1Y24A=;
	h=To:Subject:From:Date:From;
	b=ZVskL8uCkI9DGabdMbfjOPrf2sBjX4Bs89bXsCTplvV6P2SFSLjxTozDyOoFUpISC
	 klO7Zu1ehB8FA85AhU5BHUYDcxnUrcmtMopDrr5T1mevLWb/fUes6jdPJT7+8G5gOF
	 RISn9FtlNcMcYT44LRQ3CuyLXARbxwbzwrlratAt58sw9fJumDqUXQOtWtTS8+gKiM
	 OpW1Wjfem8oC//TgVG/MfOgn2FMtL/Ztu4yojb9q8m/myQnR3TA2pyVswf5uH5B9bC
	 zGVMe5lsLL+E2vvpVYPfoMTNijpMGfK2njzOlTyj1bSGaLqQ0Z+xGkqbjl/Q5usAQM
	 liO5r9r+1tvZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FADC02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799755366.11948.1120381155926127506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841ec9c9c51a40e32ce00f4441e1d0ef0fbb0cb93bc84e7eb4e5799160f9eb12
Date: Mon, 27 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737997553
