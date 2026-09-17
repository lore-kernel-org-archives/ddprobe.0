Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5179B4B95CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:00:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789639235; cv=none; b=kb6XX1s6q1Q7BSV7VDs2OUoVAVfNbZJRxa2zRkEpQAyg/f7RyAZcqur0y5n0XFpa/sNBstS/Tc5nKswEPPIr5bJPqaXj8iAYLa8ExTuKdnLZou7k2ZTKyleQ+dB+Jrf/86COcWBggBVgatyvBucgKKk+dpgE3TqNOAbgWbeW3f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789639235; c=relaxed/simple;
	bh=/iePEAO44oQvg8p0lwLbcE1qwRZzp1noI7jxULADO/E=;
	h=To:Subject:From:Message-Id:Date; b=BdbjDjcU4r1HB51L+Bg0CGGxpmI7f618KYZdsZuOv7YqHpX01eLeQKHuDMl8PBnhPwTA2c+qAHsXzCuxnPzfOqqLx4jfZECSM4KQGzmQoV0UtZk8V2q7vmUog5Vw4jqW90OjW1ZUEVKRP4sr5xP1ir1dQy2uC3KnFEUK3arD82A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdH6d3Nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdH6d3Nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB19FC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789639234;
	bh=/iePEAO44oQvg8p0lwLbcE1qwRZzp1noI7jxULADO/E=;
	h=To:Subject:From:Date:From;
	b=bdH6d3NnNZd5H+uQY70SFaN75adqIie0Mlqr8LRNXzoD2idRY9Z7VKnURZLtLVjvs
	 P1ikGeyZoP7Ux+q3hf0rRoqNyY/PzjoM7p5wsAiK3WuK2o5suOJMOgIfqjzWl9/4A1
	 c1kSgzQvLhHQRjhog7rkSWNJfp1uc7UpO/0YofS3yrBwmumT+qXDPDcEQeX5duEMVX
	 e3STuepGEwEMwrCZzhP6lU200HxlJK/WTeqajaRPO2L11SMHVnXVHikArEFo6jLRKu
	 0tbBXoC00pX438MQbo8ELJFOLf7RrFzWQoTz5TOR0sM0cyqtlDhsWzcBY2RnrgGsfb
	 QkXpsxdjGvxwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA6C7C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963923375.17389.14790548475187155409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4810ad46a5f24113876631288fcabe1eab0ffec1139be4327a5746f44ff43ea
Date: Thu, 17 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789639233
