Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104823CC33D
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779447754; cv=none; b=T4YYjbF8i5QxsvPUpn7yz8y1aXTWBgociqJpx/cwc/RkjbJJOgAgUA58Yx1Ndh9S+/GrJRAer8bgqCr3eDTmq8YkondAwBrDe1/kLQCryknULFqnJd4n1puHKOGBbdpcApb1nDbsr3menyqwmdwVsIMMrSDiYkEqO78/w5/jFxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779447754; c=relaxed/simple;
	bh=AxbADuGOLVpzTQBchTCg2msvpnwzVEvfjRCUad/Ch3Q=;
	h=To:Subject:From:Message-Id:Date; b=lEvw6Z9UCTZiw/bJnAhdzzmUQ/BnxdFKnSRtVvbFihDqKZ4TZvQWIkZthFN3onx8wA6NkO8xpsWWKIoBXcoHJLvNXiD9wTyHc+Px+TbjqKItnv9UOGQPE7x2z5BmSfbFSBA78e+Jv2O71cBetJHwWmptRcSspVtdYdaJ0YThSjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH3HnxyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH3HnxyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C184EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779447753;
	bh=AxbADuGOLVpzTQBchTCg2msvpnwzVEvfjRCUad/Ch3Q=;
	h=To:Subject:From:Date:From;
	b=WH3HnxyLW5MhdQ4EA+yrN7HRdQUnsXJr7J1qgvifsPkDo4QaeV7b3UB2i2lzsGqUq
	 6NJY96X+1pJNrlJitaS81F4Q4EtgG3WWtNldWd3b0C8luhsIf9/6iBahxJYCL/f0qR
	 kl/AMhdk+Wbxddd8BX3Ys+eHgP/4JODEG8THY4wSNXdrWZYIbVqFlVoO5lXyyLxn+0
	 NUNRg3ZygCZftIkwhWCa4Ul14NzAj6uF5LQXC2cf1NX5eT0XIbFoS2Ax4dwbCfq3WT
	 IqJMLDCrBINtFHLkw9qcmQdqxK+lQuSbY17N18wdsdbcAIy4PnK3ORGKfnC5IfIvpu
	 vgIzjsJc05Wug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CE3CD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 11:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177944775368.4087.3547621767909569025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fffd1c2485b48c5d6d0cac8f39a0ab03c0fa60f7ff9cc7d60a3c547dc30a8b3
Date: Fri, 22 May 2026 11:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779447753
