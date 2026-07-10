Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2CF264619
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783693714; cv=none; b=qKgjCuueOuVMT/ut11usqnDHS/yhaE743o1pyAD/Cf629PK0xlPF/ABiGhAUmgA6bwzfwfm5TO57Csch2CwkHwbTAXBLtucAYQmI13J4WWB/gWrfjNaYRju19M5+Jmtmu0+JGluyEitT9leL8w/PUXaWu/oJ6NBSk33e7QTayGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783693714; c=relaxed/simple;
	bh=aee5JvFsEEqskcizn3+MsvwRA9LF2VrAM89SP+N8bg4=;
	h=To:Subject:From:Message-Id:Date; b=mE7Z1ubX2QCvagCGQVuKLfZ3zynxCyaJVF1pRfArUa2CJJhx6AXiPt3mbTsERxNuEPiGjHrDFcE3mCrFY/43tgOW/cr/GbLv0ofve7g+PV9Dq8POf3v3zQcPo2zi8+odVBocccw4SGTUa9xqOHeGwkgrGw62QgcOwtOwAuwxSd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7c6F5VW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7c6F5VW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA99DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783693713;
	bh=aee5JvFsEEqskcizn3+MsvwRA9LF2VrAM89SP+N8bg4=;
	h=To:Subject:From:Date:From;
	b=r7c6F5VWQtzA5oRi6TzlZHxmE1PvKvgxDLsStYhwoYcjNHBk2AEgO/hx/k1Vg49Rt
	 aTUR0z3FBqQGHzbnfdUQe/MxL0uVMK7wxO6tel4Cs1TEuUKKCViGcCp2MuW8xZ7dfU
	 +c2xeuzp1mry9GGtCAi1tWL1iiC+y6yChQ3B/p96zas/12mbuoaOncaHhUbe8BhMQX
	 T0oUOXCOhMunLAMZ6B7Q1zwM1+KuwhlwKrlVwm8PGLBiUn6rj1RDNbuQyLdaac+LwE
	 iEF8HF68bM5lW1Rl3B4L4kh7m5baUpT5z4B4ChQy6+CincK0TNZOG3BIGtcCrId1aD
	 5i4OnAwt6T8gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9978C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178369371368.8515.9981459142861846226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd0b588d21c17625d5565a799e518b2b8511e69c86f09513ebf8ec7269b9c612
Date: Fri, 10 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783693713
