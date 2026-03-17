Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081BE37EFEA
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773726294; cv=none; b=Wi5Ys6RRiJR+GvTn+nM9qW186wWS/0ozLkearg66CSM9rrFF7RJKi4yocSJHl3LqW6tgoqQiPcQMFV6F4rk0av1Yx+ulTuXTk4om/qHI32TZYmCQKPdcwb0tUFKuAOaPZkBvAQEvF14yeTrTGdS35IGO2fbK0QIMSKvBHYOr7Tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773726294; c=relaxed/simple;
	bh=GZpa+EFz3+9ReFYO3bM0qlgGS3sgeUainciSFkH8mdc=;
	h=To:Subject:From:Message-Id:Date; b=eRqqfgoxW8pHenIu4TFVHDhCMeD4YIPFaGKg+gQ5SUaXZs7gZBuwLMN/6DeIVgBQ9PPW0zm+aB7QHf/P02R55tTCoEaQRYvAA/QQSho3Lgm2WUmZzxNZoOyuNrXjjdjQ63um2aqJ2f3me89AhyC8D8oUzFSzrP3xiowb85cYlX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6+2cOox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6+2cOox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E94CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773726293;
	bh=GZpa+EFz3+9ReFYO3bM0qlgGS3sgeUainciSFkH8mdc=;
	h=To:Subject:From:Date:From;
	b=b6+2cOoxFwmKzlc0BVLV9BNtMHW1dLQj5SCC8BATR+4AYgDn4kPICrjOIs6GrYApd
	 e4HqobNBybvXG0CctipQfPuYZPf3yLX8g1RyBcGYM2ICE+fz8O6nXosVXPCuxhbnRW
	 Lr9FX60jaebgZ71s30ESrGgrbD/TzIub+WObKOtKcuS/efkVdWR3DZQpudrFh9072Z
	 lJl/jwP3w4vqXBLwNWRBR5Xnw5H/Fs1evw1hKLj+fR1Wee7xGxi8jZLLlG19uqapoz
	 OtHN/qpegfIe3DWDw4pctK0BR6H4OfnEEBBaZ02mQncxwLiEMwLb/oxgpPEK13UKDX
	 MTurDViQq6uCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8FF506CF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372629358.15206.7300061236193630015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d74471f8ae6e3c8a1f8e98c89f1cc19c7ace129b69192155793d45310d80f2
Date: Tue, 17 Mar 2026 05:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773726293
