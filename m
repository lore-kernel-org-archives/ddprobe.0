Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FF83E556B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782406054; cv=none; b=Z46BK7gbohR28YryEIUaq26Pu80IiUTOqGV8Fm+zHX2g8jDp8RAWpW8DHDOhmcPBVEqBjyTWFPcaeKt4Nj4lQYtaX58pFLLQnXxRcLyk7COkII+PLbIrOBM0F1iCx+SXI5tlMps73OVPyJQw2amzCIjeRx7IoLLSwy+g3gnWIwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782406054; c=relaxed/simple;
	bh=1Grmq4nuGXHnEkYAJHd1ep2RfFniCdpANcrFNtBXXH0=;
	h=To:Subject:From:Message-Id:Date; b=G2EDsgPwl7xaKZgtkvy54rcU343mZjgfA1EK9NeED50zGlVXdygNTvL78jBXXNT34/fh0OOY8nJBIFrRgV+PSpX7j+hGBbI8ym0UXT3DfyEzgCqCXQ94o3hAOI3VsBxPnWBv8ngW0SVHlMW5RDobHfmgzKBv3VQMZo8k+f/bHBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNOkv4BW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNOkv4BW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D76C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782406053;
	bh=1Grmq4nuGXHnEkYAJHd1ep2RfFniCdpANcrFNtBXXH0=;
	h=To:Subject:From:Date:From;
	b=SNOkv4BWH1CAjUv4bLz4vJqT+vyFXC1Jt5kzy5A8c8QgmxbA7+7zZ9bp1cCBbw8yc
	 P9BKI0K5efO4vZJxP4QSvxs4cIcZTi4PBHSkoODG+/EXKzXv72/8XGxLpRR1dWubid
	 d5Rl9qDKzihU6bEG+x6zqP2TIowa1VUWXH3o4pT4rCjG6M6+J5Di689RPyu/Zl2fnl
	 mdFqFRMDKef58mpIaak7pRihtEosNzkoEEojl1bDddh6qWZb6ssOkldxJjVPZF4bK6
	 vX/KhLfk7SQAOFSL46qz8qeUb3G53nyBcUH33oYcCEyecf3LcyhUeRts2Ir0KFA0GM
	 IfXc0VCSzOCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7A5CDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240605368.14176.14143268712594069530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3ed24d721faadee8b8df2f5f43052e32cd3b01c5a767ae9edfc0c8d13893e1
Date: Thu, 25 Jun 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782406053
