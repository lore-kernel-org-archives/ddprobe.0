Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01B8278E75
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747659593; cv=none; b=Y2tuEunBpeOmteOjABhWL5uRLx/JpQ9iWnJa4m9cfmRwthZ8xEIn3GrHD2WsHRPgqtfd5qnClZoV/ZaC3ux6Ppwn1TKh1kvPaQYYB49l/ZbDvW+4brWEJzvYTAIbMq2fOeG8lqHCdHgtc/CsQIhM7rQNZ709rP93/gQBlany5K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747659593; c=relaxed/simple;
	bh=tPGxjylM/6xXSg03F01CibCHMIirsGmGabZ9z2Lgors=;
	h=To:Subject:From:Message-Id:Date; b=sjIpZtENFPca0sbzLbGNjc5hb0xpkHSPK90ELH4mKSGaLfjtdpZMeTeYRtIGeu+kxCJUSfAPokQ9pv1Kjso//OftVK6NEIJpeAqI/oyHHSvDv0ASQ5YLLG34WPHl6BICeL9fCLypLbxrQo/aX8sQsg/7kzUMOHSODSUeM9WP6fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXPfMVbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXPfMVbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE8EC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747659593;
	bh=tPGxjylM/6xXSg03F01CibCHMIirsGmGabZ9z2Lgors=;
	h=To:Subject:From:Date:From;
	b=aXPfMVbGr7UapfpFrm8vqWJqKABupbOvi1O/XHjckry0pH/R/J6muEZ0GSEI4a/aG
	 Tbmn3rlW5jPzAam28GyYtbZvhTjb6GevX3su6elMZDJqY4LV6zmDf3IpqD4dCW0WDl
	 oIfgYeZWCZeQECx2A0iDwVzki8WeowuShHiI0JOLGdXvU3cYZSUnQzIlk0Q6dSr+L+
	 8rkf4PRXSskfU4bJmqCTjbqR0+CZuGlzzWOMFfuSB3G9/avxOooqnvK1HeBvgWjTrU
	 kiFjCJBOMLWHJdHt9ouY0+F4yam9wEHlvta9B+j10SCrNP+OmciLYmW+wMBwc6pzc3
	 m9lSv6hTh5Jpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECDEC2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174765959357.3680.9130059956216331673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc89912d576801a66fa24d3dfa0dae0a8168f8069b18bef7c372dd1de4279d9a
Date: Mon, 19 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747659593
