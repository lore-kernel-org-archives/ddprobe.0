Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B7726280A
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756652994; cv=none; b=d6A2AkGogx5pF7/Zst7ItsklAmzqVQazfg3EamtQif5y0bMW9LCCmUhsCIzR7O47O7mW0KHEaUuLSPMwwqkbyK40FTTWr3uZ83yT1qrtPwFjYugQ/1jpFO1gJUHoAF5axdhJC4o7k47mMmEOe+5O3gUobGUL278228gO82F/W3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756652994; c=relaxed/simple;
	bh=mPi9VT2xTHi8jejp44plN319m+XaD+NtpLDFxKWKbx4=;
	h=To:Subject:From:Message-Id:Date; b=Rb+sJSpC7OJzWA4En7hNOEbgq2LbNx3/QTba5+qpYu188a/5eQtFJOhl+rOtJ6+wRi/irqgdPDUaWWyb/LVuHoSwJ+O7gDTbJaCuO8RxwMDYwEccaC3jM2pe18VgWKVtjB/HpA/iZ90TEq4SOLAySRsaqYO2rqzwqsOwTFhy6mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJJsMYd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJJsMYd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D49CC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756652993;
	bh=mPi9VT2xTHi8jejp44plN319m+XaD+NtpLDFxKWKbx4=;
	h=To:Subject:From:Date:From;
	b=DJJsMYd/cHNqDX7TiVtnjXUYaQhjYBnV5DrvzAVFyCVioyiIDDy2qcGMrTNOhyUuc
	 OxDhkCXhkepwFYBe5ADwKpi+dTRWAYmfSO5b0sxcQdMiOeqqKxZxNzwCyHrF0ggj0I
	 nGZipgYri6DxGfIvyo1i9efVcwx5JgCYSqaaxO7MNgcNx/ZX7dyG7buooIB2SGPOXC
	 JgG7e5WnpQwsBVyLN5I3EPRkV4U7ct1iMolD0bdPkrrabQNLFaFaLVeP09Oltn0b1r
	 Hr74v6fVZgVyiMI1G1YheMTIAZgJszYpcpw3E2QtW5BL9BvHgB62na2YaXlJGvdBP+
	 Xr+qL21RnGRkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9DECA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665299357.13532.6499238963589926463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4fa5ed053c7a600c72f3fd6a559542fe380c97987bf169adef11be0a84a78da
Date: Sun, 31 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756652993
