Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31ED41EB5C2
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779259234; cv=none; b=o2R6Plgfm5kXOFt+qXYANoa3yjjeIQdKV6DanVecmtXbUCUc4wfQIPOz1bMbpMg9MIXiraNU2cztwFs/XNoJ6pJPqH7tJogE11PlNWwhTqnBoN67xiZabcnRIbf0PAJrzwuWuCigbB72J42ZEI2JNN9TXX9GX/ZmG/CAszptLL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779259234; c=relaxed/simple;
	bh=SQskq2bKp934kW1AVd9hwTV9OoXyVzeKk/pf2uuPZFA=;
	h=To:Subject:From:Message-Id:Date; b=HtK8FCOSYsLue//y+Cl8xtwQ2YRRFDmuY8eXmJFgRKs/LNighV++Rn9inkIKrYvIIoEI3tvKam6yFeryB27KlFyTISD1uAZcji6NlnGfX1xMVnnyJH6iBKrIWZgSL3FlNMu7nW4WxbzIPneZlXsdxzTfWpnPRuewPzWXCsIVWOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HrKiYJ1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HrKiYJ1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A5DC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779259233;
	bh=SQskq2bKp934kW1AVd9hwTV9OoXyVzeKk/pf2uuPZFA=;
	h=To:Subject:From:Date:From;
	b=HrKiYJ1N7cdrP37kJe+/N4GWH08pWVtFtMrqT6DsZ3QidEYwXpfKAfzGldBOJ0Hbx
	 1C7aFubxdZhU3mQ3sLzVYhmrsPDjPjX63l3vY3AhOxi1NlirB0zwGlxJ7nt69mgcTW
	 u0TNXM+aFUM7D17P0qJw1hPA2PlRxTLcjfJ11Kx+nGpUo7Akx5euiAgrjnwrRCY/sa
	 MwfpBR+dt0dVhATsueR7/vBVedfZEEVJ/GOR7rdbORv1OB4a3iqL3Tkd9v2h7KB6xw
	 g9fLkl6f9oeCCm2TI7t29XCniYb2Fl/D9nVmrK3cXAkhW2d5B9ZtfVw+lPsqrmeZgF
	 AYkc7t0+sZJkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB8C5CD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925923369.21659.7955359548203247208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65337241bd5baf5213b76ec79f32fb770283f41915cf16732f32a66706dd16f5
Date: Wed, 20 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779259233
