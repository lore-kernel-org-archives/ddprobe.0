Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2CC42A9D
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754483394; cv=none; b=Q/LpZoTys7gV4TWbQb55VIk+gBVuFk8yXxI3Vl0QUm9xpTbYJ7bEUCZQy0dQ8XNVN89yHPws5U7lOdSrEoUNl6qiME7CaHs9uAL9nFIkLNHZWQsYzgErGS95BR6CFgr8KrQnTkNfWcvJ1tabvZzYjqL6MOSU/5DAI2aA0JobCrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754483394; c=relaxed/simple;
	bh=REgaIQsAhPlXPVf59NiFIQRPvU3HnaSOSOcbvmjpq8c=;
	h=To:Subject:From:Message-Id:Date; b=H71ZYsykZH8k8GJgjK823x8R2QzslVt8Ybx/K/YMHuroHLcI8XDR3wq/00jbWGGXhyde6643J1bfmldYWrm4gMpiH0LRRvqg/aurXPz0M+wAkSFA+KOAzKpS/JPJbnSms23yGeqjV1pVWvhwEQ24ZR+M1VBfpE+CFD+3z4djDKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dv8yPQ3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dv8yPQ3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754483393;
	bh=REgaIQsAhPlXPVf59NiFIQRPvU3HnaSOSOcbvmjpq8c=;
	h=To:Subject:From:Date:From;
	b=dv8yPQ3L4rQSbbAyF/A2W+2VtRvlwSONT9prZVTyKBnaRqkKSAZDlFCGDFDUENMxs
	 bFUp+/aLl/TL0hB7XhBViO8j6zZMm81Qa2NVq8+X+67usSxGK/9am3d1Iix+wue5uU
	 my4ftYsYrxQxJ5zjfOt1EjQ6Dbzkvu9QtdJHM1KwBfEv08eb1STy+zgXP0UVgrsbW6
	 bZZpSzFL9UD/T1XeW/path3ybMxC+ODC5VMwfQM+pRf7evzNzWnj/Yghzc+lDOZWlY
	 NgudV5FRggS713wkdgOwO3Qd70PHkxyDpHGDUOwvgw0eCCqX/U6RqfwuWVeOQE0xbI
	 du8t8M/9QQxyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB72C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448339358.28800.860199727267319277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db915ad0d71f41c0972b48a4ac59733d220e957e01f4616c3257ce947382661f
Date: Wed, 06 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754483393
