Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5024D45948
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720491983; cv=none; b=RjuOVN2scNXf8q053CfmGw3gr/2dWA2d8tp1IL8PAOUR2TsBpO58J2vSePFA4nU/8saQL3ISIlrvsX8UyW2kbCqCxzSoLDN+eKWGkE0B3xgoGGqyQOf4RHyxB9LOKZGSa0D1Yx1F4n1/88iazr3AxF8GaBLwdbjvyBOq8Jg+8Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720491983; c=relaxed/simple;
	bh=x4sPBgy4wmpwic4Agf5+vbFasD6DTBD8JRqh25QtAJc=;
	h=To:Subject:From:Message-Id:Date; b=A9rGLUY3g4rDLmMSeqjMzTdi4vnC+2Rv8xwYlOZbNU7+FDgndtr0M+3uQ3QIsZUnJedsWRlyu7wqkE0W9l5ADJeJPLNn4N7eiQogadRcDZRTGnI9lF+XxPzU77i5eXMfzO1mQNO+GCr94StZZi2E+OfnJzia6JHcwWiThsaPSQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/3qvtXc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/3qvtXc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4D9C116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720491982;
	bh=x4sPBgy4wmpwic4Agf5+vbFasD6DTBD8JRqh25QtAJc=;
	h=To:Subject:From:Date:From;
	b=E/3qvtXcvf4c1OUc15IbGUfj/sPseMCJIC2jc0C71ZaS5l7cW6K4Lf/qLW9Bq4j6V
	 rpAQAYLss4GhPRkkDAtmSCmKnWP7a2nFXBlXlD/5r61LPzbZ4xi99U7SO6DXWST309
	 i+oQq26DdsbAIEPjbk+LMUwZYy7BJl3d44iUMj0RJ+tTJLaTUNfl540on7GDwX3um+
	 u4jYv+KnkYtlAIJdpRnbhum+u/7omuKlqGGKpvPHyq9RyG3SbXy6eNFiVBRAGjKJ/5
	 vKUsbfajIAjuXfzR6HN4xW/IxLUxVBzmfMfXLsy48ytwC9RUUcMXrla8TWfQ/KgEEO
	 N3wcBaxKDGtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE2E4C3DA45
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 02:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172049198279.27160.729169385815297925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a379042ffd8b220b5f875dddd31f899cde7872f93dd0b56e43094091c3f80d16
Date: Tue, 09 Jul 2024 02:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720491982
