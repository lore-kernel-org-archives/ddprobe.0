Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3BEE7F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706338097; cv=none; b=KadRFLBp5wbNkRHKsRG0b1Xy0oCXfkLrM2VuKcp+j3QKTDIN2F7XY0IbSoGU6H7eLvor+dDsp0wUUmzwqsJiII1Se+btabCaRlgmvqmqx9jOLbZPPTVlHBJL7zmJ3B8p3UdbdbXUZWH7vM3Fk/pfDBl3QdBFc8Jl1JYDOU6GCR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706338097; c=relaxed/simple;
	bh=uIlx4oe45HBVAKk75et6ACZjSg1JssjxB12DJJcLUPc=;
	h=To:Subject:From:Message-Id:Date; b=rIk+EW6H6y5dUEcCoTxlFoUN/XkR7cJq4M5yKPSpCm9ZNiRi068kbJiKPIJf446NnsQUH197HwYnr7gDSEydOt3F+E3GQygvmoDxkm5cN5ZHyXjLmkKB5U7Giv9BrNKr7Al91KfTy5J4syPVjDFxotFYqIMWEj14+NRsyXb/3LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2irxLjb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2irxLjb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD64C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706338096;
	bh=uIlx4oe45HBVAKk75et6ACZjSg1JssjxB12DJJcLUPc=;
	h=To:Subject:From:Date:From;
	b=Q2irxLjbtKQmHoe+9KG83TRwj8GzpyhDV2aFRrbPgHCquBeodjwOfLMlu74glX1up
	 GyeJNYszSp8d6VcwAmOgVErsHv/4unQxjXSFY3CpxPzVs9VqJXqtDfGMI1xv+nJaf7
	 7gGzwL471NXjNfstelz3GsrJI+fF4GN2wQwUEtGOMHq632dt27U1OGXzWu3muL3qob
	 1qrFfQ5DF4w3dIAZj5q0dJrQ4xIjJn2pF6avLW5bGptIAYl0Z4x+q0DwtkkDKZrUtu
	 hsZo3fYHMjYQmj+qgWQ7HroCwl8Is3z7IfiH0b6cW+RjqTHDnn1eQR5vhO/++oep9k
	 bg+NRUtnW0/OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAF1C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170633809638.29625.5575024344766174713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 862c075d8fd67ec8482c8fc0496075f2731944d2408047f78a2643c2fa5cb4aa
Date: Sat, 27 Jan 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706338096
