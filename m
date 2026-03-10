Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90892C11FD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773167694; cv=none; b=LoUQX0Jrhum7HAgU779QDE9NKUYG8nyUBXEYXj8PEdEdOMhjud8hQzUWsELUuhYGDMHUdvdcZUOZhm1l0G2QWB2djBW9Mx23uV+/Qu1fDdc8W65FIgjmMj1GUXCZukTy84zd0n8jO9TehK3DNkQk9xCa0pt8uEgyqNrh+NEzSgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773167694; c=relaxed/simple;
	bh=1a2I3zmKe4k2fbh7YwERu2wRPx1Spt0aDfSIgmkjEVY=;
	h=To:Subject:From:Message-Id:Date; b=rR9qg1ImDiZt9KVqf3bnbzk9jAuOSS1Okx0gss9OzAYd/JTDiGC9cvGzQeruJwNJ19tk5ZAJhh5dEvj0LtRkCqRZUL5c6Vsh2r5VZwOz5BjpITlRMhIf3FKMAXCaRkmM96oBN/oILFuSRcvsmEQqzKNuvWRbafamh+PRI6VmgaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaifOOFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaifOOFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D98AC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773167693;
	bh=1a2I3zmKe4k2fbh7YwERu2wRPx1Spt0aDfSIgmkjEVY=;
	h=To:Subject:From:Date:From;
	b=AaifOOFoZ08+h4rExlfDHPTyd/4dXwG9/M/Dp+VQMBqsxV6APRkxQcplu0nIh/Xgi
	 v/Q2ixmae3Aqc07TKV1pGKnfHNBqiPaJk+qvAUsGjv1jKdFyCqop3qAY3he7CELWZz
	 6AIxmlSO2pYFjcA75rTa8z4xtmmkEESsvhwhfxifkqSGcy9EUWz8wMkeATLLFqSJU0
	 qn1zZAaA4J+xTJU8/i/4RCnHEwhd4SxbYjEeMppsYYqxFiMwjeocFE3htDk9cA4faH
	 XFtrnK3L60F3f9xwisQm0yu1GMm6DR13KyGyQI860aRn9L6KhDdM0p2BeuPzMN+cFo
	 yGRP5akyo6qBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD3FD4F1A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177316769358.11828.3968363756756857471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c800499348a70f335538ae308275b4de20fae2e65840e88826070df12129f00e
Date: Tue, 10 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773167693
