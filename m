Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E4A264F9C
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746834594; cv=none; b=Bx/kAAfqGA9JGsbYTHtor4uTfG4yuZ8i3uXtziP5pcszYWdNVCzO/BL+WWyZduf9z+KZmewsLJxD01/ixyVy3kbGNKnr6G9fbRWovR2KC1JAVRafXkZBFI1uAve1Abh/V/PYFJjKnkO7jLMycmQiD8os/72M+iDvURrv8HFFYTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746834594; c=relaxed/simple;
	bh=DIlRcpxaDKeE6/HRHgDkdotLFBFK8+NyF71fYW5rzpY=;
	h=To:Subject:From:Message-Id:Date; b=sSk766+0Vb82k6fdQOvkPm+vSHQYzZ/clMXLn2WK8ZYeEePW69NnbhMhBs7BmoB5WsHZAqMbpv9646+FW3t27SA6Y7VnYZGku7AitN7GcMCQnr6rMCUKNC5FG4d1ZOsFp0f4MOEXqB6mkV0pzd6OAOQcOAlpt0oKfR8XgS+WKI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlbOJdJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlbOJdJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CAFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746834593;
	bh=DIlRcpxaDKeE6/HRHgDkdotLFBFK8+NyF71fYW5rzpY=;
	h=To:Subject:From:Date:From;
	b=HlbOJdJFG5H8NEp5JmdxT47/GQn6gqQ7PyHUfNlEmWXmCB8hH+qguXn8z4qlOuomP
	 /Rsupk4fhq/2CteCn+blytxl3mz0xgcIkJKkG97zpl8nMshD1+elR2GhZT3n11kFTN
	 Af3F0X1DUmLT7aYkcIEvvVJOaYvuR2gqOxsPqUVW4eZsNG/mq3jfVe8ezw0kubbxO2
	 9zyl09MrkrUqNyjAhwpuGkgvI37kN4iWgIjKlpoAUSvHM1VAF2Jt9GbX/Y59VeF+mS
	 c8/ZLV6OtiBS5+NylVxYh6QWetkbJ4mCMhKlj51bVZLSCjRgttu6NjwaivXEFf0O47
	 8X4/2gVCsDohw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E1C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174683459357.8867.4797610154269448078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a89aacb7a8e3c4cf1cdad037c06253e5682dbda4d06d5bf0ed9bee8bc1cc6b
Date: Fri, 09 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746834593
