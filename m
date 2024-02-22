Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2ECF9E8
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708584497; cv=none; b=BUO0zE6q4fzzpJZs3ZDIgQYMXRzAT2OC+z6nOGQ/luY1h+HGOXxnCP+v7MRNGw9q9mVud5Rke1bfcCtEmVsjk6/chv0zf+5dfPnfJvxJjFiT2HxJr4QQCQ1Kbw3D/T5Mb4yJObYZv/Sdsl3bXQm6aRLOTpbKlveAAi5TUZv4Uzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708584497; c=relaxed/simple;
	bh=PC21Oj6kaYuk4/lWC4/m92LFt5xdwHmeXDWznEKxgJg=;
	h=To:Subject:From:Message-Id:Date; b=R2mgKnYEhTD5ps6Epsk1Zp1LEkH63jHZA76Vrx9ZBAbFqnkdLsuRWk9hNxVy/pFQcWzndcQXpAKq5BY84ygKbwnhoV0qysi16UXGHbj6rsoTbAbD5gprFiZRTLTIThu/V7zg5uuIiZ0SbiWQuMeq5yByLTGST/1vJp2Ov3o/77E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+N+uMnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+N+uMnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764F6C43390
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708584496;
	bh=PC21Oj6kaYuk4/lWC4/m92LFt5xdwHmeXDWznEKxgJg=;
	h=To:Subject:From:Date:From;
	b=D+N+uMnWqdkooPuM+aGtIuPo9NXEVdMLoxer0LUUGi9Hi3iI/n1Nzh5PQaODLqR+E
	 Kidu2eO8gg0ka5rBGAAn2W0o038N98HySQWwH538oizm5mUvJ2u3BpTTm6rt1EXQ4f
	 rNrGjlAHNdVjUtdU+H79t+pIY1t0AtVR2zJCJkFCZ4G+ZmSofjxGr86/u6hUbN3a7Q
	 UPoIY/czLnftss1hDdO7qdlqTlSmvhN7Rq0yH+enn/Mb08UuD45eb3fcrhny2WekYC
	 9Lzj61ntIKxXV336DeeBO3Id/oi03tKvrpiGpVHMHethrIAqoSG89nswwZggFFrimP
	 VrxXudFijLEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D642C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170858449637.12470.14319770528953418556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 922b37d432113274261fd1dea1bca32102d8017aff4467af8d059d57e2b45291
Date: Thu, 22 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708584496
