Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7349A1DDD6
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717345523; cv=none; b=eFmQtg5X0NOqkJ1u4+5xvZeL/bHWTIrTxpLj+yR7W7mih2h5QZP++ebluZ6qD03J56ugpXfQpbrKyB718iZfFV+SZx+oQAHlqnBBcwOczZFfBmX22FBVPBJRAwxrkplLM5vs10hYVW3K3dvt7enWBvW+qNqL1KojiIb5HLM13c8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717345523; c=relaxed/simple;
	bh=ow2DzXjXvuAf1WUeGvria7Mfz6XrMRHOKlHVmcnr1jM=;
	h=To:Subject:From:Message-Id:Date; b=SpJ3vSdOXNRXC6FuWGzLMIrzekSNouxdw4Vd3oAaLxMhsKZ6OKJ4BFatzox4S1BTEeCXzSHomDU9O6wqaZEQ6teIbf3OFvD94fcGgysM0k23eafd3w0eX3bcl3qclMwdSJPJx+zo6O41xn8jTvZFwtnZwRukNAAowTTa3m7Ow3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIOkEqVE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIOkEqVE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E26B1C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717345522;
	bh=ow2DzXjXvuAf1WUeGvria7Mfz6XrMRHOKlHVmcnr1jM=;
	h=To:Subject:From:Date:From;
	b=kIOkEqVEA4Xyd1zbNIukAcQhr2Mz+flUpdCv7f0Q6BN1qus+ZztSjoFGvLhtxBgpG
	 ozPqf4xpPRfYb02+pL3snP9bXvIQVzHcwT9itMrGqdrAkRTs/ZDqdNUR2xU15tCWJl
	 uH8OTNW1svGaedcDVe/gMBz1QtqW6ujxA2XUBgF6/IqGxoWBt4PMrIhD0UHQgfyzKj
	 jJErPyJy5ObeehmXHHi+szFKuAZYlhnzw1pGYOgBNvsvO8DsRHh98mpwSAyhXoGrUW
	 a0yJ5p7m9lcpjarnnpKM9IoaO3h0Nuu8+NPXRkhxSAQKZiSysvRp9LZ6jtDF4HhyfY
	 Gt4rv6+DmciZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8E6C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 16:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171734552279.5925.5910854254375974260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72414705a685dd41e1aa77ea65157c0e8d6838afe07473197206ec01abb61c23
Date: Sun, 02 Jun 2024 16:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717345522
