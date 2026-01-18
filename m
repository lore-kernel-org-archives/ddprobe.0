Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074B3171CD
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768752234; cv=none; b=s9qfASkbHTt3Kj7IcHAjOD4455rnZ8oiYX+yc5H2FJVrbfqWORyJ2aEjtgpxHLH0arVWlETUV3QgB1djVv1YhDc10mpcmoMkFhsjm64AUKs4VQHu6CG8jPMB2zzfNppb1cMc5yU/Y326RRfWKfq2gL6UNhJE1xzc+QxCLv1NQlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768752234; c=relaxed/simple;
	bh=D3HWc/tg6oJXyAFiEon4TGUjSzwBgS6o783d7ZXwyl0=;
	h=To:Subject:From:Message-Id:Date; b=GUrwX7qRqExDVAo8GjTmzSu61BRvmDaHOFvLIcwdAyjU2G6AK081L++UMEcCTF3xjarm1dsVW0KCi5y4zfYIsiWuVCOVUhWVou+CfV6u2jkgJbG83ptCScMmbYgOQds+pKvyMOHTN7Y4FFY4YfkGPaINV6OXw9IHW/G9jmPPxu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j32bxsTp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j32bxsTp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CCDC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768752233;
	bh=D3HWc/tg6oJXyAFiEon4TGUjSzwBgS6o783d7ZXwyl0=;
	h=To:Subject:From:Date:From;
	b=j32bxsTpojYgfVibr9+xUbJkodpv6rtu4gHOpdLR3mAS4und7/0lnye7KpNK9siFu
	 dXwRoL2KeUpFY0aG0A92blciT7w56Qzmg/YXsrafRZeQc0MRdyi7gN/sm145d7Mc0s
	 BwXOx1R8QL5pjr9I0cTlqiEiSYWXebN3wUYPSs+f/X9EY5nDN1zkHtGFBxSL9AbmSO
	 P97ZEYXgRJV9EjTBAlWuVn7gq+0sc9H1RPV5SSvgJGfHDPsb1pj4yYCCqgtYoE1vco
	 8gNO2wQBB5rPCsGdEsC2w4zvEaVHlqLlyuLMxFSmeFpg5CwtvMxi/0UMvHrR8eMHy4
	 3lQhShw22jfnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9644FC9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875223358.6208.6313373391154239176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dfde9270dfa32c93792066a1b50cc79e9eb246a73153395b9f2e28367479707
Date: Sun, 18 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768752233
