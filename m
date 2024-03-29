Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCB2A1FBA
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711725496; cv=none; b=Jmpk/A/7XKuwMmyO5/k6ycO5byWuwWMA7qpa4PHEXfN+3C2XXq7hO0rOI6HJR6OjY+xNhHXuHMG8BdYlhQeHtsDdzUREyq8Mp+sRm6QVbFN0v9jCEItUkbSIaZzctJ3X5TEOu1W3BQuTqoRXB3dQbHhCHapEEq9pXf1WyMgbdOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711725496; c=relaxed/simple;
	bh=SKwtZX4E3P6Q/DOQtFU4srZgaChpuUhKcYI57OwlYD0=;
	h=To:Subject:From:Message-Id:Date; b=o/UAQr1jirOcalpdS7F+5FSrI00AKKgumbc2AHCZK2lr7EuVs/zmrRrWhcGdHIOdN+1GSvF+MlmQLcR8lz0JroHRfwOLVzlFejEySODbiGJszMDy/5U8szSl5HNc8oalzfHt1H0rO/DkwG0frNcGu9JPcZdqTGUEhaALsaKJCT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iS6SGfm5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iS6SGfm5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EA0AC433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711725496;
	bh=SKwtZX4E3P6Q/DOQtFU4srZgaChpuUhKcYI57OwlYD0=;
	h=To:Subject:From:Date:From;
	b=iS6SGfm5vBRaUfCfbJb1tyD9gTQYVleuFXGOHv9JQznI/QT4xE+rA2B4RN/wrVUcV
	 GicFO41Z+e+HfPyqbHOSEZ0lIZfa9s4YNBCNPTUEY0Whgg8Tm8/U/bCE1IENUUfaFD
	 Fw7Z2p6zinrTa4+/6Frrhz0KhzUM2GgVLPzxJjnLVOjHjoTz3SE7STjziDbSjq6YqE
	 7wQNI/4ngK83ut4705T9LZwOjiq1qgj/Z2DRl0EJKS2zNF8jvDJPKyWYnnwAWbLC59
	 lbJFAtL0kpUTZiwRkbkBEavO5HahxKJHI4z5pQzyHJzZBnigTzgCI1bmoPdvPjqS+c
	 5kgYQFTAjaYyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6117ACD11DD
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171172549639.28598.11712834688032812386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b303778d20f457b6d778b985463eb69c2437423a3c2781df8ed6158b1a9a138
Date: Fri, 29 Mar 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711725496
