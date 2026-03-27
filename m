Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A4BE3C3422
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774594494; cv=none; b=ZQk6YmZ7yIB0pyD6gE3zED+sFL5emc5g/xdeu6MlrRRzJjOu5EQtVnkicfCOJsbLskC6sgeHMiJpX6b2bWo8aFluukHS0gZQe3uIy/rHP6TJCNqb/lajxGrtyv5P7Q4ORqfT5iHFzcQUMlYbzEBYsnze7KOqrldigxBzKsxMdQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774594494; c=relaxed/simple;
	bh=kPE/cYJocfY+pYh7LL5WqqVcpwkHzxgPBtXXvZvdGFI=;
	h=To:Subject:From:Message-Id:Date; b=Gq1DiT4aXiIPoRLsGInezWLLuxsKAc8QKlGafWID4qMpsL5cRuh/LHWeyMboH6HiPJSUqvu7dKTQERJkLrqDvhviqJ7LsRKE5umcFX5MxwNmqqbGyYmeqZ1dKdWaAxTajaFUdcZ4p9G+yc3/+SQhXYGf2zJGtfceFHozx/aX4R0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dg3yjOrT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dg3yjOrT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A008BC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774594493;
	bh=kPE/cYJocfY+pYh7LL5WqqVcpwkHzxgPBtXXvZvdGFI=;
	h=To:Subject:From:Date:From;
	b=Dg3yjOrTJvfoNZ+j0tO7dOYu1JkLEs3kSYLZ9aA1ZQyNVDO6hC1kNu7AU18i4BFeD
	 xKY2qAFRX6HorCzpe8jK9dF7KYV1tQj5FlsMP1piI+7iOxnKNxuULgHOZ+XqVZyFvX
	 afxNhfGGVMJb0dJfMqwRG6SmTgCx6OlY7Qfke5db+jhwOskhRtlUtVhwJenVgNiPZn
	 Shi2BQZouqnc4PwZ6T42HqVYQF0kj6uEOooug5MF84Uly9gG7e2xPqEKr9MqoenOl3
	 CFMMVywR8k4j/LHdZYbX0VEprg41n+EuW/bzCipDhmkTByg/ep1e9fFmt30lpWbpWy
	 esfPDrZ4dE0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE010BA432
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459449358.6719.15667421897186186125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9788d7906daf55531993e0372414f588a1b825382437c3e6acff859a8de91982
Date: Fri, 27 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774594493
