Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7F91C84C7
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746857994; cv=none; b=MPBQP06EBA+1xyncouAku/Z5YYif8bTyB4jgZ0PdxJyJRFw2fv7nhazwykdBt2MhAZj6djKQcyKbJS7HQjIEJaq2Ts82AYYEwca7aNVHP3bLGNf8P7oTSOX0yHTA4ToTk1yvpWmr3D8Ml5sNqGIXB9tU6w4l+xhVnOEz5CXMncU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746857994; c=relaxed/simple;
	bh=tbc5qup1OOKK5/T/WtPI/nzx+p5Y6WSLQ+CVc7lQuQo=;
	h=To:Subject:From:Message-Id:Date; b=Ejm1qmamAoMlevxSJMjN7r1zmmBzdxZuJdc1YlkX78wVF+qlv9ZbR8mkOii3qOOgqbJcnYTtkYzHaX5oNZHudfA3mSjGOs9/Dks6kphYOKGWj0Hp4jZv7CEUeUoCkN6B2ej11/tPHzm0NR7s0jVUK/+ndbRwnVxDQnM9wE4VZU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ndp5EuCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ndp5EuCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A750BC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746857993;
	bh=tbc5qup1OOKK5/T/WtPI/nzx+p5Y6WSLQ+CVc7lQuQo=;
	h=To:Subject:From:Date:From;
	b=Ndp5EuCPEFY6bmECvNzzgrXAzqNYHvEO3zmnrCo3UPB4eu+T2xvK1+LtV8GbUlOdj
	 w5AzgAyGFeLOKJkV6UiHEUL0UDjKPz5HRDp4dual9ssu1XVPDrgR6lj0t3FprBBtnz
	 BTI0/74YqdNLyfyudZ6l6BFqj0X+4FBthYBe0JOOVD0yuN3sQAZQwjHmkdpQztqhAk
	 lGjajK3kw8Nj3aerDTt3MppurDhj5qDmindNU6MmE4Co1J7GQhVnw4kT+t0KQoMM+L
	 8tgwmHLie/MlS+0UMzl+RyalYJeKw/ZP9KiJW5oTlJfusGov++UVg78rdm+imATDCp
	 dKdp8Py0QRlgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EDCC3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174685799358.5144.522948560504873102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e857904c5067a3e62def8643bc29fc062540225faff9052235edec4d5f1860b
Date: Sat, 10 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746857993
