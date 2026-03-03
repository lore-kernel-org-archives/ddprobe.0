Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D340E374E57
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772519693; cv=none; b=bNacGjgBTfZwpi/+OIVxawPPfhlWnauxsAF0+mpU7qgbfmtOiSsfc87j4dMbAeMbiQ4MQkbuCpBFOG40JBOdsr1haie/hjH6RHFgoPBtBdOPUVsz4OH8giPu1JC+3YG22PMR8z9Ds2+obia3rYVbge54Zj6rckK3qBkjuJpjxSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772519693; c=relaxed/simple;
	bh=kCVILr+Hi7lzAi7aLX4dJKVeVMdeGvdcn7K0NNgJ97Y=;
	h=To:Subject:From:Message-Id:Date; b=JDZMhn7iBLgA6k0vaOUiZCpy1EoxWc+MPRGBBJIvp5Fuz2rh73V/w4fLTHI9v3/+6ym2gyK1RdvXiyAH9pdxsA6F2BUjK7gd1LChhdCBfnaCPN62nkQwMYtXJ0JGyAggiHjpdxekK49Sal2PSfN9F/s2ANQrfOOUQ1qoGo6u9hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qLzNx+7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qLzNx+7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50E9C2BC87
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772519693;
	bh=kCVILr+Hi7lzAi7aLX4dJKVeVMdeGvdcn7K0NNgJ97Y=;
	h=To:Subject:From:Date:From;
	b=qLzNx+7RvGEfMAKFgfEeCcIb2nbrFrWn5LQZVuaNpwgLDLUXMiZ4kXbOlRIUxTd5a
	 CgGK4YnbZFXEkeWe7mWjZYBWeQgAtS0OpiFiwrlsSO/pTSthcNRxkKb29OWViRhQRv
	 G8BuA9HoPBrhVUi9AFZcvDPHim1mCuTEUwwjofb6Urb/c6aNM3u91VlHUq75W8f3Dd
	 QqpNtGQNviUuWlQ/eVRN1QZYQkRZ2b+6PD8TTsF9QOEuG1dlbp3lt/MoUS3EXie1rC
	 0iNLt8Z5CLlloxV/NpOU/60JhdXJcwdo0ILPQnJ8kj9rq9/JothreUESArygjUSfmi
	 1IGFaD6cxzaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E812E67A70
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251969360.12707.734878759744849547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee449bd1270424174f0f5c8d5f868077cc27d259f589abdd654dbf28f555b038
Date: Tue, 03 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772519693
