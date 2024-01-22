Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E855D29401
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705903097; cv=none; b=tihFpKxgVqJEMo7S1NZQS/7/X3MbxG7gtrSrmKGv5R9SUudJRORTCcBI9+X84B4Iz7yNa7QIULsETAzs8Tif1l23Iv3XD9AVhWSbiAROBfENLMm495o1rhsIRXjrJ3QdN6Jalmly2N0mzVTEtI8xmv9qGH+RnBBU34VaEz4fnZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705903097; c=relaxed/simple;
	bh=Ekj7/FRSkhCDekC4MoNFsGUfbNRhhcS8xbc+vem1m1A=;
	h=To:Subject:From:Message-Id:Date; b=flrqKrRFq6Ud6wwJE0tduBTmrW9ENwLYtXrfzMcx6o6+VYu7Lk4M+4q1OosHumES/YxU9NDeJQZssYmviJdkH5mrQxhrGzXhw/Q5gxEmAdrcvYebq/5UyOtyLYnMClS8POGQqID2S5SCPc7h3MnpAbuZd/PEr9oOhdczYX9R2YI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jsgj1BjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jsgj1BjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E90C43394
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705903096;
	bh=Ekj7/FRSkhCDekC4MoNFsGUfbNRhhcS8xbc+vem1m1A=;
	h=To:Subject:From:Date:From;
	b=Jsgj1BjGXgLPFheyLuztjWTtPCXh6pAEfHlweD2pgsdVrYHXk0z+e5erknDKk7SPP
	 d8OojMkzSU83J0RR8+Y9bVTZkl4M+HRSV1ok6ECt3dFdAOP2f2kWO0J6NyPWs6n+mq
	 V/xbvT9sTwzyxJC2D+rYdQDiZnQhyVb+bylUOZD/Pp8hBcR0YSSHt0d9JL4nAoA/d0
	 Hq5v4NTQEOvY4lng4FxC/iUC3IfQm1eiUwzFN6VREQTSo5XnyjqsFmBb8RmAI1FMXj
	 VDvoChN44lGRaJDJHgMxfx9JA28xp85rS58EYBpSEXFE6RlA8ssiJSqnrU1SjsNUf9
	 0jwfpc9ZO9lIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B0ECC47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170590309636.30579.11608125501853468881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa299833290c2547be672dca266e9700777209403d9b3d7400cf3c2f54038931
Date: Mon, 22 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705903096
