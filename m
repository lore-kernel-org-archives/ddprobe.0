Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1B224A05D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781697994; cv=none; b=m6lkEqjrqYfg9DRN/uUpNco54k4G7ThoTlNlxFWTec3kE46s/PQkMe7R5pFjG4lDcEv60VULflYrSRV4hPUVaTReNyskZ1SolSl/rMikAnapEU5T2yr1ixB9xsnVm0jQcd6Oe87uEnoKXzPylNpjjYjQe9mJPTl/l+0fB6Mt1JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781697994; c=relaxed/simple;
	bh=RdJQ1CEWnBkg9Lk3TFyhpSpl4f3ErXEFqrA0+fi6WDc=;
	h=To:Subject:From:Message-Id:Date; b=FZUY0o3eTFWezSwPPcNBy+0/jV8hOLSnbN1pLt4dwOpqD3NmIQzlGqe0FjQgNlQjY88QJxEtGmnUExePoU/antOoIq0R1GD+vy62Af0nqC7PRUkCK1uuknrHHfzAshoXVTg/1R0yqZ8DAjz9VfGe8nFF1MfJiF7vL8zATlNJRxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axtWAUyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axtWAUyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F1FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781697993;
	bh=RdJQ1CEWnBkg9Lk3TFyhpSpl4f3ErXEFqrA0+fi6WDc=;
	h=To:Subject:From:Date:From;
	b=axtWAUyyU7/rMcIW4DtFtmYveOouzoJ+XoGo/llsenkFcjGJ5km8lkD6Q6uZ0yRG4
	 IkAzRNmev9Ja8UhoIBPLYgosrwA8mL1a3aqjZAyBvPzW3NAmWfXQ4lPn/+DcFYhqXC
	 F7ou9PoFsS57KRME4A49wn+RuQzG+F/AvR+a2Uv7jNFI8i/8ycmvV+hixL7uDSD3OR
	 8sHnCvllaDEDsmM0HGRUfyndaluPKkUKP1z53e/g9s9NWI66E4mLW+rmn6xEcqc7PD
	 hIemXnCL3tQrF249NCy+3bx0iEIkVPkzeadajzTAbaNE4IEvQrRwG2iaNIF0zDUhsB
	 II/+0QLfzUtZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4414CD98F0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 12:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178169799372.17278.17714433782854735620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede7223050a4d30bd24ff3ce22a56d791066a90cbf4f3a1fdfb15eb8030e3a58
Date: Wed, 17 Jun 2026 12:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781697993
