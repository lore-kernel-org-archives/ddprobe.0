Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0031F5DF0D
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707921497; cv=none; b=ZmHONztjL+3nE6Ipc8cA5+fAZAGzkHVDfv0TNz8tIBEGzZd7XnCsOL0kfq2EE1Q5dP4JzeNrzNvWW6iMMqbTvS3Ed+r1SLLAoMltKOzIrDa7n66TDHvyWbuX1/ibLXByYAFwxKmRBp6I4D+jWLOqKA2e9fVbeRn+UT0Sx+pneKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707921497; c=relaxed/simple;
	bh=1Ot7HjVT0Nl6ENbeNMJuW/XPINTG/or1o/wqi9MHTDI=;
	h=To:Subject:From:Message-Id:Date; b=Giie2zGjsfrdL1g65Gulay/hHarHuzGjczrMBK4uaMYOX5jgqPDLylsEYkU/rk8S68mrM+uB1sa6jsljpGmz//cVFoXGS9ZNDHSe55yLAJrwhLyAAmYdRozni/2LtOA6pRXvwx/+W28cP/uY+KkF2+nUH9tuq+b+ET5DrxpCMsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGj9h/Ei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGj9h/Ei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7824FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707921496;
	bh=1Ot7HjVT0Nl6ENbeNMJuW/XPINTG/or1o/wqi9MHTDI=;
	h=To:Subject:From:Date:From;
	b=bGj9h/EiP/zXiB7yciYj7Y96RagwxcMaSd1YGA9y2Y6uIhE7pLVGGo/Yi5AMLcc7V
	 zruYWZp1jpyAKLE84whTsiSGbJjQx8NwH1nx1Y4lwSEQDffqRiw0c2nmO4gGO8WMUg
	 oKznj7khPLFGvddOqR4vrw/2M6T5nGDn6NLLnpOxe5yNilRG0F9mr8Cw716FXVMBll
	 KkKOdMpV+7lE1nvpBw9OumzetipvRR7UQJcc9MSWIOXgjKDe/wCee+7q6ahYEU1UqD
	 UerYg6nDczhVtduzFSGh4QLPSi+tgMZru3gUUU/9ay7vFWJTHCsCTMpktY8ftGRcim
	 NIjY3JnYwk7MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D033C48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170792149637.18275.18266266967014499915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72f0d8847c6f76c2179e00d0d8df6882f012c3227e64e054a4eaf660edba521
Date: Wed, 14 Feb 2024 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707921496
