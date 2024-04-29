Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA58D53C
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 06:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714371743; cv=none; b=CynqjGf7uupdntqWKQK0OKtdGcYnZEi18+C7F4Ou8M3LUdCd/eE1VgMB3SP1lN6T6oxDgAb+ByXHvEUVI2av6Kx2/qwxDesDv4PkZVY+dgD2vu629y75X50rstq1MLmSqAjEQ2+BCzb0/d/YproIJDRu4PqVt62Bm262/4rGPd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714371743; c=relaxed/simple;
	bh=Lebioov5i6/zIuo6rFj6ELBA3lIcN4k1KT5xyETwzIg=;
	h=To:Subject:From:Message-Id:Date; b=arhg9MsiMzN0KA0rqNv+5ZoSpoDR+3IqLayGN6dizsCW0hCmIbSFaJTTUf8YYd7OjzNxtcdAdD0olrhnvBROu8FTsV3OaEaw9HkoyDvO7mEDKk/tLAODC3Dnia7m+iWxgP0IcXsF2bE/0i9H3EZ9k+tXqoEFKoO7l5kGKB9rRNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUzLGzwk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUzLGzwk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40A2C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714371742;
	bh=Lebioov5i6/zIuo6rFj6ELBA3lIcN4k1KT5xyETwzIg=;
	h=To:Subject:From:Date:From;
	b=XUzLGzwkT1mDYFiOLoqXV0+u5gA0DmhLNAFrhUNn+f0qvAX2LdMpjyW+DbmTfv7s1
	 No34cpifimo4oAxKYuFpuuGACR0Mz7E+hwZ/GXnrEV1N3REl6iK5jt3TrURP0fSS0K
	 l0vmu9jro3p5Ur5mJRBWfN0q5dJgJJB1wqsljvYuj2K5XJVN5ig4WBvHtAW4pvtvR2
	 fRgPEYASM4eelhZYTexk1H2yphj+C9ZyaJNPjbBx2d2XIn3rDQNKtBdoOPd/tZ5CZN
	 d4MPiYoTvgKtloiaadeWP3KPY15eEPl6AvOZXMlLZr7JmtwFfpc/JNcsb7ApXSHSeD
	 IRKWAQGto/aQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D72C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171437174279.23053.13674700631630386515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 421516cd99623759053811527621ad8009eee28ced7665f9502436b7bcae90b7
Date: Mon, 29 Apr 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714371742
