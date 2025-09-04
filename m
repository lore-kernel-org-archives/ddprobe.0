Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F9D21A420
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756961994; cv=none; b=HMUZYaR+3/ZwtYuKOAwlQ05lPPPwXbzLEhmItzEGwQJnrCU/QCm4vIsTg+oPA5Dt5RihBJom0VbBVXu1Lq5d/rpqKjPPZaKEK5OpgfUglYpTCqN5QcodbrguqSWOfBJrjFgFyAAwof4LKm8n/MfAIwx2C1Czcpulz2ft5nBRuJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756961994; c=relaxed/simple;
	bh=unUmxhrMEMbD08cdbQon8bUglZ8W3Mt3Tf631AVJzrw=;
	h=To:Subject:From:Message-Id:Date; b=f7JMy1czFZzeTYJmXt6r0VeO191lYQmwOku47H+xieNLrqM0FF66oRyZWfPQk2XsXA+Nql0tT0XEb/mMuoecedaSvbB0q8RpSuRVKkV2ObUmrt/qNDzQpVk8NzlpIZpkDkZj5C9REDAMfJZ9+K2syEs2n58+X6Ttj8KOap04NAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iwuKNk5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iwuKNk5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A39C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756961993;
	bh=unUmxhrMEMbD08cdbQon8bUglZ8W3Mt3Tf631AVJzrw=;
	h=To:Subject:From:Date:From;
	b=iwuKNk5kIXfo2V498XtIXX6w97hJdES/Pvf5t3beZy7N/hba76LF9KDf8/Wdx8HCK
	 8/+ULWCwWT4d5/VQtqJCDk7vuynzaAGlI01M2ouCrEEfikVZH0w+cHSKT4LlR6of6J
	 hs6i/0WY8xrDuzYCl4tWn8oMASppm6m4MpxZb43pZU3sg985SFRZHKZWlyiKcBWBUI
	 zCmRQPlt7B0mZtbY8Xr3e6w9C5T0QeYIwJN8kmTtCGM5cEwEj86DodxN57BbMAZXih
	 S+N4cJtqZNBPUX1hVwwAQkm1lY8HBAtrP9mCX7LMk3Vt538WxLRpU8aqpOPBDnLdFK
	 LIQuC4jq5wV3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDCCA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696199357.24769.4768564876932241678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a7938cfba328afbb468c3d9065b82f860ae159ccf22c7085c764807d5a7fa2c
Date: Thu, 04 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756961993
