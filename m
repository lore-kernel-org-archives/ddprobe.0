Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C23635F5E2
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776824855; cv=none; b=WPAJl2TL7WS4SbLj0z2Rd8i/ntCGjom59oRRA4ESvFCYjPQ2j/1F1aG2OWRQqCiD314Mb4IUS0bwQaRwbJwm04wSnW127vI/EIgdX7cBThg1IQ9+NWx2b1IWC5EpDClx07EN7Ilye6JqttHutauQt9hyj4D/AzqlKOFhgipQo78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776824855; c=relaxed/simple;
	bh=Lnuza3/Vr7odeZls8+XoWUlMpjB9LU/t3qOjBneNDCI=;
	h=To:Subject:From:Message-Id:Date; b=q133jq2LSnyI6134SX8Ru/XTT7fjUTXrAsTd61zm8tUyK3ff3TIM3N+soFkO1TrNQy8fT+jgXwIhC2GFSto6ylzcyF7NqV7fxFiA+n0GEUOor0vUYiEEQ0h1zV5o3ggqefcFc1UhE1Pc8o5vZtHE6pyg2KNOZdnuQIVN2JtDLjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx+SX5/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx+SX5/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E6EC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776824853;
	bh=Lnuza3/Vr7odeZls8+XoWUlMpjB9LU/t3qOjBneNDCI=;
	h=To:Subject:From:Date:From;
	b=Jx+SX5/3OycGXiI6EcOerrlbLje80UxuvvX9nmk+yA/A0zRLFWb8hx5WOawAd4t3L
	 AQtGt/ky2e6pEaaXv3FrTJNC4+aIavXfSihepQBMJ0rFX2EX/MNzGJL3edUWq7HN+o
	 bt93cIK/2AfRMwEMzvIBzZQOMJUQtOw5fU64e3jfJWTw8AMjcz2vBPv8YPL+fUHenQ
	 NjXTyvqBjcjUlaDbTEGYBArDEfkNRq9POsEQMQBZp35OzhU6HKBMFEWmDbx1eIOyvg
	 1zaHdIsaiCBD32CQ1vummPPbFxRny1dVZrqf/5UjLVQuvt85+8yB8oKQOKme6sJ2j1
	 dWjTfDl/+Xz2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA69CF94CBC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177682485368.3486.5511478489379044389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dda379f3502bab8104ca7476ac79d7b599fa9adcc627676674adb22827a6657
Date: Wed, 22 Apr 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776824853
