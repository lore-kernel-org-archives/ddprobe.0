Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E91B38DF9
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727887554; cv=none; b=QUhR4XP/jMnJsAcvBzEi0wcwiJBQhk1Z5AkD7+58Ntt+0u0Ywb9B/JjvKXoeHw6DFE0bA5jUrssBNWqmoYYDweCP4XBsc3pPneVDRpbCh5wy/E1Tx9s92pwTTno/jkuANGPPWjKlX/GZ3wV1C41m3u2kxx6U2nHL14Iksj1AlvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727887554; c=relaxed/simple;
	bh=mbUJ2dJLHdYtLzWoKZF4aFV/fDIX1Xg0jweI5OO93XI=;
	h=To:Subject:From:Message-Id:Date; b=djEEI51DBoZIsGgVdlNdUrbeTqzwm0Ul4mNBr2v4qXnWlGAnbMSCl6BFaXzNcN5xhwd7e4haz3rF68Xe+ioan0FJHiQhSI6fJ5N2ryPDT/udireijeurCiAejv9yBrJNIim8TeAeqwB4Li94g5B4neoHQ4IhfJrvHV7PDF8xlxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzZkIaqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzZkIaqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89D5C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727887553;
	bh=mbUJ2dJLHdYtLzWoKZF4aFV/fDIX1Xg0jweI5OO93XI=;
	h=To:Subject:From:Date:From;
	b=hzZkIaqW8plnyI3XT5S6+5yAWSkijCjzmVq+eMea0hiPRNmzcYQE4XAMtGj3QOqMy
	 MYXiO1NROlXeBMoIg9JV4UyhvpgR15Fw5VMhHLAvoiNLqpBMStW6bES2dT5A7Hh/Ah
	 F7R98G3kYzU7FlxhHtpMn/mOAutDOdJQ6v9/boOBJWs9B1yb+4l99LoO/LPXeqQS/a
	 Fukyx+rYOBTlhVgk1j/L9PslbYCePtFOTQIe/NlQ22H2LGV0rocckTLtTLZ71CC+L9
	 vRBYmSlmIi3fEGsgRvcjhyGwFOE11Plg8v+X/MgxCWw9Gdzpz9m6T91Z6pErfH9hJ9
	 P7c1GifT0GtdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93725CF6D3B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788755359.8369.4171198400875460986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da14d840669d85f4046334dd1fbe90d09fc1b3e974946c30fed376349ec617e
Date: Wed, 02 Oct 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727887553
