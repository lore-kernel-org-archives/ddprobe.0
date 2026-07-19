Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522411A680C
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784444914; cv=none; b=JVyXjLONK66yI61fymew9CjvPLy4ZJI7MtCHVqOFwz0WwsVW2XWoLafzYcCBcyMImFxOEnyjXgfCj1Oi6hUeJsjqAMxEezRiKhUMSpkNk7ioVeIwFqf28A/GgJugFjRlNsVXwkt+Xn/4OjSTOGWikHMxClilO/213k8CaZ5kugE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784444914; c=relaxed/simple;
	bh=eWEDOiSVM6zfPN7rK1QOdslfG2P/yJNyta+yRZrXrT8=;
	h=To:Subject:From:Message-Id:Date; b=AvstKLyhBjHTszyDTxJN2WICIXyVLgrUHXxYexN8JgT6n++CyiCQvJNvqtesy9MNqiRHeYI8rmpGD2a7E54WJt7n1Sfu6x8qDDBf5dMh2mCDcBj29wZtOWP0MUFi4n0jdTEl+92QD47Hn1pAql4tuSqzFMXzMdxrYFdkW4YAPyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfA83/HE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfA83/HE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EB0C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784444913;
	bh=eWEDOiSVM6zfPN7rK1QOdslfG2P/yJNyta+yRZrXrT8=;
	h=To:Subject:From:Date:From;
	b=ZfA83/HEoJyj+l6v/jQKf7VAYZJblWtIPzOA1Hd4zJKxtqAR3HiqdycXs7ogF2g60
	 S+8SuBPic+bTvQS7vJJragwMDEMA5tsbe6NgWKFkQSZHr6e552wQSHCuCxIERyiKLB
	 hFWFlw59N1KU2af4zj4BnWL5o7mW3RJugNcy0FVrN75U9T+3r+qnYkPv2Kv7E/Zs2K
	 hZzIrwU3Jzc8kwUe4a01HkCxBJpxw/3DKFXvliejc6l/12RbWBm/vc38bTAe23Xu5m
	 wkqTeEJbXRVXuOTbrXHUGUwkuhke4hkqEspC/vZXoTxYOrxVlnYv/Qx7oOwIdkqvs2
	 w2lP5HK+UX2QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9FAC44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 07:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444491368.25181.9049987217476213355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b6c301478dc736f7c70a02250b376a8521cbb45b36c1046699e53bea113d49
Date: Sun, 19 Jul 2026 07:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784444913
