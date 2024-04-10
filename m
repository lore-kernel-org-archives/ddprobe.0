Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA2134DE
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712726897; cv=none; b=Jrw1qL5WPBkzCnttsajGMgPP62LhAS19mo6NyQPdhLkxjFXeOv7UXLQPbj2VwWt6Uk2L3GH8WtSNnz3tjCtgSxsQvUHJ8QBTziwMmd1ihLEF7JOaPA/gOCzhPwrM1yorwU0PuKCw9KLvjuA77BzPYNiv51ctX53reoSY/Vn/ooE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712726897; c=relaxed/simple;
	bh=6Jj+hRPgqVZpmofTco3DPhM3J+z3MecyjV2H2rXdTFI=;
	h=To:Subject:From:Message-Id:Date; b=MylLjnMtEzXYdZUIanYWjXSC7aeG3lCWnWbCgUu51TfT1qifXRrfRZAo6uYgVAUVNyOqFy0WwVJ6kj4G8VpQbpXHCMdjCWBzoqgcOQVcZ90JItlAODmihCqqtVSnN3HlnmDo4s72ppYKTeugPkvuOwkIiUAAmKS7ZszFn7xzN7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spPD3Rf4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spPD3Rf4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 845A9C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712726896;
	bh=6Jj+hRPgqVZpmofTco3DPhM3J+z3MecyjV2H2rXdTFI=;
	h=To:Subject:From:Date:From;
	b=spPD3Rf45krt6NRAMJCcwV+Frg6IkXE8IMGfeyMrnUNWjozLkihwNZSgXwjxdaPc5
	 sm/NRGuadZ4FHkmM0FyPaAIo5VUi3LGZ8iW2C/rAzeLa+RNQBJ62uXjM4c18annrHI
	 TDS4gU4Kpk+2dxaAj2fJMUkXIX+4sRNFQTfQV38wMuTr0Bg0d1Bl1L0FG788ADywKr
	 y+Men3yvfMEW/6krLo5T1M+ychfn+b4e9jWCnGH7dPeUmkVxbUJxCWEn4Tysk333/F
	 pFBbnAVgdjDPq+stTUU6UPiPGHkyeixmx0sWQzw8FRBXd47SOX5uPHXY05Mdc1TmBK
	 fGMVbKRWBVXMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F9D8CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272689641.5117.8360584109069754457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb05c4b4fc22d3112a906d54dcc39367457381e7ba8f8805b405ab51b5d27cb
Date: Wed, 10 Apr 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712726896
