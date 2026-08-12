Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E72288C81
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786512034; cv=none; b=cdgGhktTxzP5NbRbPhBp5kQGhmhVFyF0n0pFqNfTrWFUIS3GOtvqFqMi8EuwpRXeVUWs2cB6qURTDxdO52jdYbFoHkVJ9H7QkSHs9VTDYiZQe3RX79y3hHJPiP2ZIZ7C+vpOeySqJPaL/abrfYaBMDwvAMUcuy8Cm5OAJimPHlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786512034; c=relaxed/simple;
	bh=lHHywYlHQeH918dSNsH+dUSsbMhtwAQvHpjqyEVDLxI=;
	h=To:Subject:From:Message-Id:Date; b=Nl8pIwqs26aDONKjJXIiBi3UFkBo7vXIVn/8J/dJQ2GXmUxXwwyYJhxA/ERVq6M865m4UUBmndXL+K8gRnk1YEAGfirMSu4RlCadB+Q0mRD9qNMV9K38Z3A3V1cavW7vBhM/JSFQMQjMHEoGj9Nf+uOnG1XyEpQqHP8NjyOqLGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/zcmgML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/zcmgML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDAFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786512033;
	bh=lHHywYlHQeH918dSNsH+dUSsbMhtwAQvHpjqyEVDLxI=;
	h=To:Subject:From:Date:From;
	b=Q/zcmgML7Ft7d+VvKwY34UhTRFYVQhKS9rbaJSGfB8UQmtQp8sqk7tR2VUHEhyOSp
	 69kaxEhw8rAixNd63ijDYFlyeECAs1niyE1iJeaa/9WLTR8aBxkoO8vPm7O6Abs0YX
	 RgodHRQyBKi5LlyrQS4b+jU2L7QJW3oUuzIKew7l6fCKCwhQdqJIDkVgFAM1SRxgJi
	 /xm4NRk571GZF72/nJn2mFp5wKCcVusBboHt+I2BQEW95t8u3SuFRb0TbqlgD9Z2jK
	 4NkQM700UJwPOOspYUvoGz6p88oIp9Yr3tg43n6i7TZieYlmFdLgSN93RoPUPTR4j9
	 W13ENmvG90oYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7ADC5B567
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178651203368.8555.13656142451002648865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 851fd486d112582546c20e68ea74868da858242ab76e7339d3cb9bd78eeca24b
Date: Wed, 12 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786512033
