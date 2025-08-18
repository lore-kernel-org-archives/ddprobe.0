Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05565255E53
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755531594; cv=none; b=eTzS/sSEl2/5pHmjE1r1TIZr3Nc1+Bi1Zc7TD+zJd+Yi5x/ot9WkxYPK/O3wVT699B9FflJ8QojrwWTVdNKceVMtw82F9LUnHsYLx2Drrm7dObJtunSN+9qpq6I0aOG6lvGJrTgZt8wHfyu6USdzf4MWOLfW1ZkwqhWLVbEWWLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755531594; c=relaxed/simple;
	bh=9dhgk09KTHCKbDZTqcbCjb2bWHnW5VGoYL9HjD4Pg0Q=;
	h=To:Subject:From:Message-Id:Date; b=fF2ReReiF0LZhY+bM6Kbb8kuDq4ZQGt7bUP4xvHhH08E5ZrIWCRnUduu7TpgWnq5PWik4s1TrqiqtowO3bbqcC5eyqu++xBDiyeYuUSWmf7bovtR4ZAj98/+EGwrL0PdoFu3XeKfU+ZY5JzW6qNDOyeCHRnCDlA89okdBVQcTXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=estbfpSi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="estbfpSi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCBBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755531593;
	bh=9dhgk09KTHCKbDZTqcbCjb2bWHnW5VGoYL9HjD4Pg0Q=;
	h=To:Subject:From:Date:From;
	b=estbfpSigxUOCJotZs1tqLSE59iMBsDUhxCMgSUdW1AwQpfdyar7u//gT0XJHpy00
	 kgdGGDrAqwOZuvGhv7Vz9nvBt7Q/wboIJxG7Sk7sMlIz0g2HkMogJ6QtLbKni/BIuo
	 TS/K4g3QLte6h2BjDmUX15lOWU1RYpr+b+1H2nndXlczRQt+08Wv9PvIq6UQPdAwOz
	 8i4fsFSyFQwwDBVdVM3xCVwV7APgx7UvYSlK8pHHUrvG+0ZKl35ySYMJ2H3++TNTIH
	 oo4RK9UDOl4r2hrs2x3e4o+vwk8yxoE5no3MYIPUHkF6jxtUlpgKMQL4PCUcjosfFj
	 +UNGaURXN+d0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5BCCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553159357.20273.18262977506038100776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ded4fd4da4073168d2f6aec3515259fbd5589d4c3490356a1fed640590572ee9
Date: Mon, 18 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755531593
