Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F628357CEC
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778597434; cv=none; b=djtH6M0QNhYgPY8oshtuj1RpKsGqzwENZ0hU2GjXlvMgXH8df9biumYuUbzbgMYf/ykoWTfoLPD5yxkd+rLDdmDz/QYe9xBiYNkU7wVsGSxYZsbUMqmcmMfGJXKvGNdkR2xHWmX8E2nTbnbu1iMSTZB9aahCfTtr2eX9JgmDYHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778597434; c=relaxed/simple;
	bh=R4YB1UEdCOJ0Yi15viLOBu+1RZ+ovtnEtZiJVIssnyk=;
	h=To:Subject:From:Message-Id:Date; b=KBxQmHO4j4FWTOUoG4Xe5oE5SWjzE+QO7w/In2IQ7okoTwnA+pQcUmZd2d5bxMd050i0ucVzBDUWMbLYoCnzbh92aocEryeV7L2qpg9fb6mfbrgwXGKpujBBTmgpmKPaxaEjc07Y6++pKq4aKJedH1zShYS/tEuECbqmNJjsJ/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2hOEcLt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2hOEcLt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85EDC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778597433;
	bh=R4YB1UEdCOJ0Yi15viLOBu+1RZ+ovtnEtZiJVIssnyk=;
	h=To:Subject:From:Date:From;
	b=p2hOEcLtOxWMRehTBPVUX7NhlE7zOumo0FI7F/AnywiRHpwCJDUMZQorsI9kJf2L8
	 zcPSx3dDaD67PiU3bx0V+tvTZYK6fhwkDj5niyOCjv+ytdFEzpwPB18yk8JMWceyFa
	 R1mgcTHZcspt7TjJRtCG2IBQ6eP24QCOQSZKDB7na4Y4vAk1px+EVBWOJAp8ECLmkQ
	 /eGxGRUzl7ySzLngbfzUCJUTAUbLrA2zV2u2zH8JKZmcP+KC7/JC/z15cVFtduAfy2
	 3EcdmCayy8d7KP6Zzm3bhI8WdORTzDBNJQy1VTIbXpJwBCkdgPHBqHwVn62lindYfN
	 MAefcx8wYBRSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC7FCD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859743368.20397.3056653240447874742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27550d422869370e5a32f382ae6be08b4a448ca0ea4216257cd5cf26ec58891
Date: Tue, 12 May 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778597433
