Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2029A2D542B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758400794; cv=none; b=ejg025yIkVPh+xjo5u+jrmxanLsJM5Ql0Z3Ug2S9CTvQFf18hrQd4AZEDl/cg4MqU957Us2rPxNBgkYt09DImwDcxLOazZjjUHfdvV3eRqo3w4n5DcghYamsEbPGO93oC8lX+C1prhcMv58j3X0rs4Bza+liRA88jhVCvhhGyY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758400794; c=relaxed/simple;
	bh=JkjUBGbKtxl5jVw4/WesikH8qL2EL/EiuvSoOPwfFWA=;
	h=To:Subject:From:Message-Id:Date; b=pI2k78COh/ov8u/K+AWQow0GLIVjtvZCOqgOojdjPYe8ivCR24qWUU+we9KiqnhLmsKb981uMDgh/VVuIS2Tv7HW0J1txvuXZIuADypBaUCIPQHXHPdE2m5KWLe0Xq6VBGlLBnYuYLGD+M38IvkGA3kWVXMYCHzlnZEWy2vMyBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mSowxYFO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mSowxYFO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCB6C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758400793;
	bh=JkjUBGbKtxl5jVw4/WesikH8qL2EL/EiuvSoOPwfFWA=;
	h=To:Subject:From:Date:From;
	b=mSowxYFOCz1f+F62fyeb1C2YVcxxOxKxUnEPHgRih03dzZx7Pd0xlb6NEy4dAgRiK
	 zY1bFbpNFe/MtlUiS6MW1NmRgngfgcOrc4ZTVZfj0PZkv9cHM2cflR0P5a9WVZQ5qX
	 r6vXcJbi3GhuEuimU+PwUqpgseSunloJPOpzpuIIjfT941kBKPraSW46ysEQAjm0o3
	 EDfREihQHSkSaO74tQm6kUsYt/tOnlV9yg3vR9LZjEzWe9rCWegsfg/vGlBzv5+Cmn
	 7MTrhwI3FBHBh16rqwfBvsv7jX8kiUq3rZdceGexS/0RIls6f3ZqliWDen68dnD2rO
	 C8WOFdLOFWeug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F748CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175840079357.19250.11503501748899477632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b654bd82027f1363746c130df0bf6321945d91831bb429b68dca75671f6d2c2d
Date: Sat, 20 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758400793
