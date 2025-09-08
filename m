Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC3E747F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757312396; cv=none; b=uKfIUku88kM5K27HlrgMY6MUVNmxyQmsRP2g5TW2jrHM9fid6S9BHgZyi8AYWX4xTDaUwsh5BR22MMZBZsvyF6ulzpyAc4KSHo6aoujkv5NIHBfAFxqEpJZwCTwPqpajzcSn7G0aU4qi9x883xf71HDAyT7v5MAdgnL22Q7jxq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757312396; c=relaxed/simple;
	bh=H0PYgyCJeVylTFypqP3sAdl/MbWM0HdYfo8y5YBGRbk=;
	h=To:Subject:From:Message-Id:Date; b=YPnWVsWXw2BgzCxfznl5AK4hL5WqJFLwc2PEqAgYPbvpQuqsh7KUjkwxZYZSZ459uKgY3m4Uqa8X9Vnh1qRX2TQqKkh1ztZIkYovb3quu6L4AeD+3m6q318KaTHuGPvuIpj50++ll3SxagUTL2D/b/5DScqn7McxWPkWU/47gq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsyTdbFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsyTdbFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F974C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757312393;
	bh=H0PYgyCJeVylTFypqP3sAdl/MbWM0HdYfo8y5YBGRbk=;
	h=To:Subject:From:Date:From;
	b=MsyTdbFVZ09ffE9XGJSLhIXCS0lfXdCArhjnPUgOYuZ+Xid73bBd6ZyJyWqFajLkI
	 9gjlal3KdJOg+qLuowmvA2dA22HzV2CB+7GVHizOcYlEVO8T8E9n4LeMwEoYwCYoA1
	 II4flM8dM073k6yK6yIdpnte9vKxRdTMG5Zq3TtKtU0GgWxwyzhOU11ui9D25ZXM23
	 OFCOl+tnL4FzV7QHC/mqIVC/QqaOk/NKdGnb7IrfIWEl0/5zHhk9m7UYFOFNDLYTAm
	 FEcJDKSoeaC067WOuw9fsFF2+NJ8UCxr7qvUpUNdIiW99XZUuBS0yuzjEtkOv73iyf
	 4TK5m3EOdWUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876CA1013
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175731239357.17935.16352944621160113840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 456153fca0b5ebbb486f7e0ddef884a0e1f2a1bdf0d6c94bf41145b05f819353
Date: Mon, 08 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757312393
