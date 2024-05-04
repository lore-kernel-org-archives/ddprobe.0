Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76ED417E9
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714786943; cv=none; b=nd9ohpcy+j+0dPV2NL8OlR7GxXaYRGlX6W7Lcivqi3K1FG6+AFxHOpqCuidWTY0UDlowSvpatF/s5O6dxO/fk5fP1KzhD8C+NDesih6huUi0SXoqKCwouT+sXiBxoXW3bmvcF3/rJ7M7H+I2L+0sET0hbwd7zXejRoBaL3kJsrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714786943; c=relaxed/simple;
	bh=iUhaugmQAb8a1aORYeRoHLapZiQ+ZjAEkTmnLp+Vs2k=;
	h=To:Subject:From:Message-Id:Date; b=evMkTeFnI1/1eKZuaQ/aSiDUBbRRn1LBViGzJO2D+MPBJg+WgnTgt3R1af7NmnOGRSZECgnQPTJwKBM/sKLZmYu2F3cH4b9hoV1Nk+3na/7bU2a8GMzwchpXO1PF0yur16hYAVdpGdB66li5+QE+7+YrRbP7nx89PddNK4FViB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQpQkr3T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQpQkr3T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBA42C116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714786942;
	bh=iUhaugmQAb8a1aORYeRoHLapZiQ+ZjAEkTmnLp+Vs2k=;
	h=To:Subject:From:Date:From;
	b=AQpQkr3TnC2ImLXs9QPGcyGAEge3WIWnyCtTfesdLRr2y3ewJwIXk2yYvewvx2/Ej
	 hWEFZkvF4MboHokaYQiqKvD0KSBfPWlUc9ymhu9O5HGh/TBBM4AOYKb+APa3W5hhyz
	 auC+H+rKg1depVwc6e3WMZWgm33xs+/dVLiMp7U8eSabtNamv8bH9V6vbddYVp7lvL
	 5NXcZt4VwSE8EwjAINRPfZ8negBKCX4hNWVFlk5ZNEirZWVtzwCY0UjfS27lAVbXjK
	 04JiMGpZpDMA5Utdietlp0BnEmzAxkcHcVyTQYyCadEZ1zsltiEB/sOsh0t8rLA+S/
	 jMo/iAMXswcRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD682C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478694276.6757.6097299804567407343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1c0ee63f122ef0eac18a80f9e4bcd21f80a23a0ffe21ea7895adc06ca320b1
Date: Sat, 04 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714786942
