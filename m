Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399712AEF5
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748700594; cv=none; b=n11PJKa9Qc/RRndeywD53qfd54VP5zI5d5z9G6CADW9fl96XaN9zgtlyIgoVWN6r6e/Z8wg44UZJ3c8p1Oev9OQY8K+TpaB9BLFB2iZDBQYnyta2rqomjr9oc9jjaMkfTLTIGtpmoktt0YD1DUKTCT1YT60aoZ4opvMNbI3w6/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748700594; c=relaxed/simple;
	bh=QZwFuE/y8SF/x57pyO8vwWIMZcgdU8U1lKyrK2fcV8o=;
	h=To:Subject:From:Message-Id:Date; b=cjOv+XbONdJE/k9mqAhGAm6na1yqbRG+p603955Ape+n44tE4+zFVZQvNEqaKYebba+Z3Klg28TmtaxO6i7lEMx9vvCIlVFmyp4n/siSbwHh8KWGZJdmxYeGSw45U64NVe8Ct2jAFy753H9WgWsSJOqc4EeYHg7FKoIPo1RDYCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekuvrJVq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekuvrJVq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2D1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748700593;
	bh=QZwFuE/y8SF/x57pyO8vwWIMZcgdU8U1lKyrK2fcV8o=;
	h=To:Subject:From:Date:From;
	b=ekuvrJVqPOih+TkO2WvCn2uMYMmkTSSpnCRbO2G4Lx+uvt8ur+54sw8/M9Lfh3fvV
	 /zhx5gqiXOxGl7uLn5OsuRwpxrIo/skxfcka6bkAw8El+xbNuMSo2NVdG8chwe/6eh
	 FUAFoDGmf+8t+kq6sxNYk3zH14BA8ZWgiq7Eneesi5aEUCszP6snTYRyckV0OwOn3S
	 OJ3fwvSTmHgHfJZ75MgELosPZapgxDpokcP1FVtn9ZzaEEVT5T6mY1q9XmSSOa6Bwx
	 BXmKzxVQwyPqsN3dPQJP8qsSPdQQinBXRnCYA4zbOpzhUkWvzlYap6b9gs6jnPCPx6
	 g+86RXTpkzT6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD3C5B549
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870059357.9469.5734867858024646489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 990188c778544e4f737a341aeb7d74ba06edc355faef492d24e921c5089177b6
Date: Sat, 31 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748700593
