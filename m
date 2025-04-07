Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4805421171D
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744045194; cv=none; b=U1hJH5sZZmYQ3rqOubym2gbKsLWbfqX5VqecqrugHQPlKuaJxmrUG9TBSJK0aIDefOGnfWV5QJycXdVUClon1QzSftxRQbxurtYdWUnha/WPfA1QZ5oXMuRsPjoMJ4W2klSGvQL+3hAuHZHIY/bCvEV4PXkVoAGfaSEOpOFe/Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744045194; c=relaxed/simple;
	bh=JALuynoKlyB4b+UDK+eM0i9CHEMSDxZZECeJWcd0J94=;
	h=To:Subject:From:Message-Id:Date; b=doSKbauM+l9FqWB+unyVkUbp+i9yT4xYq5rWwSo5waNlNt2UEJSoZFiNdN9upeoFh6cqEak/W4eLmqyz2Jz5rSPCtXwsrrD/uQudxxTsqQSpyPXemX29fwcujRx3G5sDfqEwgvKFHLfAZI24PxtWMS45It2lSfKmXhX2JA3cJwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZM1RkTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZM1RkTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CB5C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744045193;
	bh=JALuynoKlyB4b+UDK+eM0i9CHEMSDxZZECeJWcd0J94=;
	h=To:Subject:From:Date:From;
	b=RZM1RkTqnOSIrVHPM+R0DQX2/adGFN9aMU9tV/DlB9cbrA6YkhbDvt5Mod4GGDQaS
	 zPswR0GauczENDSF0DltGuxz+CUQCWHuZfQT4OWlO4DcWCR5kdyT5UGtFDR+/6GJlJ
	 HUU1C8nAEKFZOvMo+0NZsPGdJzrYoQLHHc4yk3WgKtWK70l8OMgWN0gfMVM/ALutl1
	 20EABt00CqwHqDgKXE68oW1A9KRju05o7WfbV6db/4/JWOwSQCb7fSINLBc7Tb7wfA
	 DhERaUqJaqQpn9MtXPSI6LQv2LQblFeZHl8JA+44V2bB5SIpFw1CC/pGUd7RfvfVS0
	 zIkgTko49tFOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9D9C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404519362.10368.12075786047125424330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5375975028095bd792feac180037bf81aa0eee34948b67797d5cf23b3d6676c5
Date: Mon, 07 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744045193
