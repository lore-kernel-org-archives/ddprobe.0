Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 187761D5CC6
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776362854; cv=none; b=CsDiVGuXLSfT+xZTBv0BaUAbTHJ7cv8nRWGFbd7kVvjA/4oSIkr1LmAFWFte74b0B6OqAQ9QdN3bM457aFk9tVeamOJZCsv3zA6NEfVtIea8AUn1//DnVAs1OJ7c9xvkR/j1bK7VnW1V/tWZzyLNe29hPCwwqh7sUiXgkZRm7aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776362854; c=relaxed/simple;
	bh=fLH/VaMTX1AU18oO98kTmRdwehfYljh+/zT+Z/kUzJI=;
	h=To:Subject:From:Message-Id:Date; b=uw2mj6+3WZNvmvE9lypwh218V53SsXfGzHiSqpC6kIe+eBM4eQHnGRUoVmCKLS0+oPL8etNJGgvRnFtGOrh+ty3cWs6P3ZM49YctlCuylqfT3vq/GZakFsuGnXbXSFmCCFZZE6X6LDKlOKQRclWfpH32/dQunfYxrCgg6Ld9Ebo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dN/gM06S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dN/gM06S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1455C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776362853;
	bh=fLH/VaMTX1AU18oO98kTmRdwehfYljh+/zT+Z/kUzJI=;
	h=To:Subject:From:Date:From;
	b=dN/gM06S9Lm6OvgcuB7j+HAb1SXGfjY/dZG4oj6rdhq+kZp/fy8S5maU3ph3l6Gwb
	 2Yl1U7wNtsAwanOPQ4BSR6fGcTywwaPlWhRzLNr5AI25EKiZJNbFb29U2QiUf1uceC
	 GQXrbUpXQT2uxVroXrJBl6JAUeoE/qccfc6YBwec57i4dHtoADiwMhJj6NNq8jbU43
	 3z5FCkErJRjxdPM/5QloQajmGfP/ZM8Fqh+i8ExPqWysSKNXbhSSTXCtKK4BZDca5o
	 nWoip5Jde/B9Ud1s11CMqC7GMEd4/N4BCQOcSqv8TKvfB0ese7d7DVivJ9JMCyMuhY
	 HPC5S49kogjPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE665F8D761
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636285370.5625.15897723068831708434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae806f1996e9a6b129d707638cf03cf234e1441cb06e069ea23c398391b46d6
Date: Thu, 16 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776362853
