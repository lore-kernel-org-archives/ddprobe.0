Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1847418787A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774712694; cv=none; b=Dh0LyRIOjTrtcMIjAOQNr0wk3IdPOyXec/rCFsfz7qNIAjN39PI0TI3JVkWbic+dZYKnZYdsnPkC1o17IQev7u2zKALD1JYoDGpfbviFqbULxf+gv1nH0uJ1qI0mDfHnUo+YRKaiNfCeCVlSedBIthZ9aCBB5e6ojFvbkBlzjG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774712694; c=relaxed/simple;
	bh=yh28l9uSCUnupXOlQHh0x3OWundwUje6LsDaAT0gnm8=;
	h=To:Subject:From:Message-Id:Date; b=QxCR8k9Wee68dmdJbtIjqlYrptALeijBUrhk+B5qDBEajJjtAFZwL2kvXIGeFZCxGIVMQeq1U1VBR9F2OzHkiMBUNYPk2R1LepJ/yfoQDxC2sIyFulRX6A5JJWNIf7Ec9mEjiyAVsmnoy3OJ983+V6BbWx6uHc9S5g58XinTXZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmwD8kF2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmwD8kF2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E2AC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774712693;
	bh=yh28l9uSCUnupXOlQHh0x3OWundwUje6LsDaAT0gnm8=;
	h=To:Subject:From:Date:From;
	b=VmwD8kF2Yjk1o4WbNQtYnkXDN2veAR0+UGNWwH8xlXMn+yw0l2wAPcqrlpF6nGKH5
	 KJL/AbeIEhO8RgS0ME+F9UGFb2beTFvvMKWBAuHsOgFfp24kNI88pcw8qC5pg+t1rK
	 JDnQSW/DL5LdMKGb6RZ5VIegm4r27NaAk/mRJ4Lqaw/dtfjg4SFHlF5JRnevz9jOME
	 66TIuc+HUUBv03wjl68dPrSilvePwp5/D/PX12IMCQZvBf34e5gt9z1vXC6nMR8+qE
	 f9gzrzE0TfT3xfteyowixb9vCfZrGWU4u59OlzEm1HWHn2B71bC+AvWgrEAYjDLLfF
	 EzAHayH8oeeUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C5D10F3DEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471269358.28733.5083386064256032876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bddb6b9647ff3cd1ddacf5e7f52dfba5f3f7187a9a7d937ce2a96b7f61f4eac4
Date: Sat, 28 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774712693
