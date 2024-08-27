Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCA14A33
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724728554; cv=none; b=vFRH/ZsG1ERb2szGfoscPJOEtqHcli90PrhewSCipzsd0hcL352hbk3d8M9MPqsxO2gMHTH042tuXKhbBvBA3ojle4vK55w1F9NQNVft5f3+nStPWf/5tsKwG7bDSmdZdcctm0bFdxNY+GXNhqoMc5Zxl2oebPkbZINOHTK37aQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724728554; c=relaxed/simple;
	bh=ThPV5OsXVXkVer0Ou/YsV+HS7+t4JTHfhANdFvk0UVU=;
	h=To:Subject:From:Message-Id:Date; b=THodGp5xA+FtRc4Dn/aEjVHrM8kjWoiiOT/gN7r2uNQjlUEXSFlAprykKG5W3LmHOExxKj7uhhrfpgJADoO4mXAlLgJBfAosjVxe3QGMQTpnWbO+NX6AevdvupRG7HroGrv++IkdZ1hr6aoO9zwWag0fUhve1pT7lHnuTD7TRag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3Nmd8G2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3Nmd8G2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA5EC8B7A1
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724728553;
	bh=ThPV5OsXVXkVer0Ou/YsV+HS7+t4JTHfhANdFvk0UVU=;
	h=To:Subject:From:Date:From;
	b=q3Nmd8G2n3RVjCJhUBe+y84zcnrVUoj/t7QR7KbNFvQFjSDzkR0c0bKq1l/rEj0wE
	 2G7e/HyFeydsCd7ByQdzRXV5ReZih52GCAPZS7Arz3RIhmVtGzWepdfdVEh0nQgxAr
	 EzLnN3TIAE6sm2vXuBQ9m28ZQUtr6G3s203Bvmkx4gzD2nKVkJyVCfXOkESPUBlxsb
	 kw/id0TaqgqtiaALIVJ+YIUWlXjRmjGYUlLLejRIyfsV2Uf6xDbut8clUSOxSladhL
	 nVSLrc6rzae5O59Kz4WVPgvNz5HdIO8OvaT/GmBFMc8EIN1LoFSS8cZoGYE+hBLDqk
	 QjoQS/yAoblbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A867C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472855359.7048.8130142173591806505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e310859e7fb0b5705b3a974e6612b6b982aa070d2b8aa6ada6fcfbc9b8005e71
Date: Tue, 27 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724728553
