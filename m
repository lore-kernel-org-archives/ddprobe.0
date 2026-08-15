Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F732367B5
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786760434; cv=none; b=L+kIm2QdxgzQfvV9GYUllU97COVWR+awUWoRQSw9FV4kRAOt0XH3sjYz5XQyU6+SgqMu0SLfpFWOEjeRwR6S8zu2edEcQ+cOYIz2o3HdgWvXWbby/FfZqhB+xXMjwj2WQU9//+iV9aHWS/9prTLZgte6ZkuKRvDnCjp4l9dVu8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786760434; c=relaxed/simple;
	bh=UpzoKENsHmtrC60x34ktoFdG3/D53QO7+JHsdDSeC+w=;
	h=To:Subject:From:Message-Id:Date; b=NEy5Q1iIjyMY0DuxXiroNrqOcFwwYnah/u/DNyiF6G6CGtxDP1/eXzzonOqQuT4C6j5JO+HgjIhhCCN+iBa/OtMgB3j0KES88A7M2YDQqK1krKn1R1PCmjQ50JBgDEoJTKf3auUBHP+GZwkexdUqkgXeWbNdwdOLq3qBOAJ8Zw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvWFgQ8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvWFgQ8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E03C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786760433;
	bh=UpzoKENsHmtrC60x34ktoFdG3/D53QO7+JHsdDSeC+w=;
	h=To:Subject:From:Date:From;
	b=uvWFgQ8WGGXbQpKQpfqoNDi/DvIAiUFzEpcLik22XfM4fr3foxEKoacf7FqGzFhH6
	 Spqq0iDnnL2YTF60YwBB0GjaU/PacViJSEg1cf8nTjoRV0/Qomo4DRdTLYiKTnuWNu
	 mrAUcu8buptwU0sPgCgRc2ugGtOJzgcKmaiEc3X4ml9wGRM7+hRtICHAPXeQKSjf5q
	 izMIMiDtibZKcfnqoganRTR+NXfAB7+oaxxeHx3lnNb88/5xOyl15xYsAOh2OXlXkV
	 kLTrlF1MaH2F4+hbspnV/uiUTxJuIY+L/FxvJ/lDvECdEE/TgUQbnSjs5dkBArk8vF
	 SI2Xr6fN4i8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF782C5B572
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676043370.22485.17979516957626631025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d157ab91e4325f004b52830efad219d42f588fd77d25ce6541c514bc54f458
Date: Sat, 15 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786760433
