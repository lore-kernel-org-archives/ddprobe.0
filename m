Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369A117A5BE
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740710934; cv=none; b=NOLWY4To2EGSaWR7UgICzZ5R4j1K5g99yl5LCuv9d7NuLE3k9e1lJGBHUkJf2Ftl5HUHv84TNIYcPNq9bE4wHvp5Xgxz/LoT4b0eh6N4DVsNMXiVuXUqmYWJQ9CBEvHkv8gpDbRHyzQyusa1RN+knXErLFyhKI1arqbOk+UdKdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740710934; c=relaxed/simple;
	bh=QTEKA9Wq05xIFfL97Y/dDCFIpcs6xOGjH+wTpzl9fCs=;
	h=To:Subject:From:Message-Id:Date; b=eh8DrylWpOQSAtBLqXgE3AlxYcYoJQ6pUw4KwABlZdsDo0jU4hwJ8cwLUpiCdMfD4veyWdu4EaerHwtQwkNwhZzRgbcn8dsMUryMbcc32sPE5MkbJdjDb2BuzyddWsLRNHrFE3AMRlUI79C14ybLdMxHRxDU8JSQaXk45K6fB34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmqKqprN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmqKqprN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AC1C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740710933;
	bh=QTEKA9Wq05xIFfL97Y/dDCFIpcs6xOGjH+wTpzl9fCs=;
	h=To:Subject:From:Date:From;
	b=LmqKqprNZfjdGoq/KOruELaUPEnen7o7GE3AAIwHFHaQSPUWlLz6gEP6hRbTAUaVq
	 6ds6nfBEl0z+aBcF/l82NRljUxl/VJkKzjTNZH7bJRzp9cupzzymYS3G+9ujVfFaFQ
	 5i/1dV5bn9NB9eQ3aSXNiQ8IGsRD7oa8+whg4q2hUXLtDU78dOxHGL/zW1v9LvAzLE
	 qsW3BqHgKfq1VxtUIn5WLJmQm7vAHPhqTYRmr+32qY+psmaNPgiDMDhIIWJSxhErb8
	 pQwzSJe7r6LkZ+ZbFNi2mG5KJ0IaUbZElMDwDhIIjlZcwwHLmMgnFBHrE6lGSK6CIw
	 3ud2cXUVHNVtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0DC19F32
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174071093357.2857.4165863999078956519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44859d8d10fefb064bca88641f5f421419a7971717587a7244f4e3178f201207
Date: Fri, 28 Feb 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740710933
