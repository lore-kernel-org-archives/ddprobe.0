Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACFC54743
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712633897; cv=none; b=Iwh4rGMPoEa77/WZAIcV7xWFmgKdGVEbwp29HL9GP6JAy10rrcSVrS5uNMc3VLNojZ6Nt2+NwfZD9GNVvpem2aFf2jYjBxYCKomh7WRW+BFctHhvZukbuRuvxHWQrF/BlnvYPlYSAw2OxasqYwmIOiwrK7C8oAVByHtZtODLBxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712633897; c=relaxed/simple;
	bh=T2Z9r5MfUuj2Ap149WI7mjeLW3Iw50hkPYRizm1c+Dw=;
	h=To:Subject:From:Message-Id:Date; b=ezOudf+xnIzh+Aa6+3EE2P5lsH+oc6xZY2Leyley7W9QlRTileaitOmstLLrldZEqWCdqLuJBE8jDtF3Fv30pU7Yc9IvqmUS6dcOs5vleMz8KE5Knc1L1qNbewNnt5IvQgjIznCH5aHwLJSMSJuPLYKvl/vXQSdwh8YwipGQcHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z6MkK6Jq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z6MkK6Jq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E91BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712633896;
	bh=T2Z9r5MfUuj2Ap149WI7mjeLW3Iw50hkPYRizm1c+Dw=;
	h=To:Subject:From:Date:From;
	b=Z6MkK6Jq/t7fxo3IpTfixyPaiN59bZjUAyoBFFdJzLcK18xkAUV9WC73WcrzXdmFi
	 Ar8biST3rCccciliDqZAhs77iCfgnA2SsZKM1tcXvnK4LxOIRTHUyxz/1uzvGwCQYL
	 lQ/bGtrsejZpYD5AbDZJWzqd82LVQS9tM4LAm0x981Cptu+chOUIUW86+OR/dCS0qu
	 LI0gnQZm+KKLXEQHRzz0L5obeBGbQC/VvLN4E98MutuEuR8cSTUTP6/2EePuj7iIEz
	 w2pj3jOPCbJsbjY6F6/t4GMNjRWiORr7ujsaF7eA1h80SRTZKmSaWr51z64c0QXG8J
	 MqwI8ZdcwZ4xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 874A4CD1284
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171263389648.16358.8306313031700498853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a20a0339771f80146cf7775800dc86251406d508668ee6e30ded78f148e105
Date: Tue, 09 Apr 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712633896
