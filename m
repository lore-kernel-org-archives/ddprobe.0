Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B86DC1CD2C
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778377775; cv=none; b=dIdLdjav/7dCCyuqpyWi+RZnJT0bUnRsF5izjQCoYM34udEGpA2A4yl2yjKYsVDJSlGuOphhWACuVLoJGKjP/Yj4955PBYC+fiKt7LcGZPacQu3tbKVyieASeDKuQPvYwn8ePiV8UI6X4/cAwUJxzcG/mJWtbcpAVtZiyJVAcLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778377775; c=relaxed/simple;
	bh=UFNnmo2qPHwaz5QxU6eU9GVmTq8tVT1sSPOzG9SJtBA=;
	h=To:Subject:From:Message-Id:Date; b=Fj76wf4QYGBQj2a93eI6gyxm0zTImFFiHCZsDhgk+JzEDIuo2Ajg8jcoWKcZ7iV+wogq+nJuvY3Ykdaap3sThlFJK3nnP5HKuw8V9zgURHzVFV+qEY12k8BazmQgUgT5+RpCTiyXHsNQN19IvX4eqe4SDem/AWTDiJrQQflhJvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXGauuL5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXGauuL5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 57F5EC2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778377775;
	bh=UFNnmo2qPHwaz5QxU6eU9GVmTq8tVT1sSPOzG9SJtBA=;
	h=To:Subject:From:Date:From;
	b=oXGauuL5HiZZJF/tZItyz+1FbQRvPItTGW+cwdIYG4j8tpZoN1DiSI6yY6VO7H2Z1
	 fACVh/JSbKRMXdtE4YA052EiOUucsE9RWG9JocpIAuJRfOfe340/9hLbnu9Tzqp0VC
	 XpH9bU2yHZ8lnviIXqhPX7QYnc8RVE2VvTzOsAlaR4MdJ9VCVil9XDIBokcumNTRXE
	 aUpzuVCuSsbC45Fih0d6IIbKhZLz5sN5vl8MV9ccd66juBgHLAFrfj7AYZxi/ci26K
	 kEDPv7xb9s81u7ehJXTcvRbwBA2Y14Pzp7LeNCSdyOXz7RkzVxDQ8iO3IWxVTL/4Ff
	 1zl7Ko6MT2AKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2AD3CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 01:49:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837777454.27581.11735791664429586701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff07695f471aecb393822f218107a4c591ab553ea010c066f3c2c89cca75a47e
Date: Sun, 10 May 2026 01:49:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778377774
