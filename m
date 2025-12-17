Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04F8B314D18
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765953835; cv=none; b=DPki8hMvGka2S6cocj1MnqaUEIlirVLwKPpHdYz9TP9BLjjCkJuKkWSFnW/AY9YTJ30WYJUKzdc51KSPDWdeipCtmZbGFm2tfkXKgX/5egWnKxUCBW6RZhfCnYZ8dRVnaiItKNPMCNKU/iXsledf9DUNZNsq7PpPEmJgftz3J3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765953835; c=relaxed/simple;
	bh=Ov44LP8jhStpLmiag5ey5pv8VJqxfSN3xnjq3Eyonlk=;
	h=To:Subject:From:Message-Id:Date; b=Sbjs/gbgc3fxdUIT0ereSlQvv4uUQu/KiF1ABCRSHsEkhhn43JUWUvitKXxWFxhXYdPbiOREYLcVC1MPFRc+6vRV0/o4fvWWBazV7jIK1oalzLEj2wnqB/bqEDlIMDTUcjYAWrLF9mReZBBQ9eRhOzgTVhtJwnVrzxkJF5IIoZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CblWWS9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CblWWS9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F22C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765953833;
	bh=Ov44LP8jhStpLmiag5ey5pv8VJqxfSN3xnjq3Eyonlk=;
	h=To:Subject:From:Date:From;
	b=CblWWS9Mcu4DT021/zsQClLmvCz9ukkd/hcubFsOJ5GmJFhZ+sLX94cd6o1tvU35s
	 bnL9gjNeGLqeTWQS6t1iwrRVbMgBDO4Tg0jfvAoTbFouvmm8Rk4pysR1LWdaPUU+NG
	 0ApCPgRC8bgMgUFzuHC4pd7WnNmS+K4wlBBUFxK9RMV9AQyjndhILrh6wW5CXwsdJ9
	 ofMWmQJxhQejK87kumBcRRB0NaVk8kbnozpP8hRx729oXEH8KPZpuxc1J4YHC0S1eY
	 6Dk1bfk8+q9hr/FxPilkNIbWt7EQYxBTUsYxh0+yyMKjA2MOjyjCcZ27U7jA+Tuyn/
	 PwXZYx6E0amZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E3D64079
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595383359.2557.6078979336606868921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8190d995777989bb7106ccc3a7dd76f0635003fe970a211951816c52771cbcf7
Date: Wed, 17 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765953833
