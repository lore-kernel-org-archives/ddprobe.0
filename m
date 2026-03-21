Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0E22FFDDE
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774064094; cv=none; b=HFfIETefI4EStY0PJiYZeC+OQrort9RZC3x54UJbs1pDAFZA98N/vmyMc6p0a/i+5pqtIOF7pSd6OEtWzAA+bxS9MeyUYdwlX15X5ewe+/7Nos3RZ33vy7GOo/zEJZzg/J7OUZUFOh0RD6xGhQd3gO9cFg9FkFTQr19xLIiE2AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774064094; c=relaxed/simple;
	bh=jSmehY0a15XkppI9isoyC1fS0E/doQqVUcWon2fcW7I=;
	h=To:Subject:From:Message-Id:Date; b=OGqnHV+CMYEKnmQ7yjW6ZQtp8mqrbm6spHd2sMktMzEelIDhzyTHnhHFUKXz6yOqEVCDlqarMdp7QIyXfHqkUngKvwXCGOohj3nrZqZUuoOPiZ2/dJfjrpKx2Q/qF4P9irEGm7NU4z8wfzwGR0GoA3m8O61GdTfpMMPHGIAxC10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmoYMf9S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmoYMf9S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFF0C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774064093;
	bh=jSmehY0a15XkppI9isoyC1fS0E/doQqVUcWon2fcW7I=;
	h=To:Subject:From:Date:From;
	b=VmoYMf9SLW7LGthDURIs+KslP3vW2BXp/Mhc8gx+SGzVjZ78DCD4WA58RUlX7an6V
	 SQOZLDu0KzRhL4DTMqCpwPyZvDPd+vZsYiU6LYHi0CFMJH4k4u10YGigAUGt+ubcwP
	 hK5lVtpdaHeQife9TrCW9XWtEBSWN58kYDnM98yE81r6nnuh8gy4yGZb6xjPvRCSDf
	 jAPSUd+9SBbbPmZ7W/ImDYRMl7a2wxlAlZmmaa6DwePMtqakgORR9hu7qbeJy8Hd5t
	 I4NO1BnPgzKpokDmgyzku8Loa3fHuIBCkY9gg3J1Irv89hww+KZUYeV+qXnQ6WDy9i
	 VL+0pPkyi2YhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E57A1093170
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406409357.28179.2829240197481514665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322b6f36a30a648a8771290436f7528d637bad6a127ef64d1557184c321ff938
Date: Sat, 21 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774064093
