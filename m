Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4ADA366067
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776019053; cv=none; b=ekaC3PBZk+xuRsIYHi86v1BktPVQEj8kqmn8C0lSi2+i/gHg3ZxQTUPgDMUikK4EkZbqaip8J1VQuD5g/PonXCXxn6gQbodJAprOfeLl6ITJVeCfk5F4H7NR6tExslD0H1TiIGOSut/VC82aFZqELGlXt14JDkpJXZtMjHoEy2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776019053; c=relaxed/simple;
	bh=B0NrA9K9J9JWkHJwugTAdNORbS9Kb4v4iuXb+3sROJg=;
	h=To:Subject:From:Message-Id:Date; b=mrPd0GiMdRpVFjQSWlh8j12j1OylnO+3W+uIAIh1J3DEC9XySojEuwj43NyxWTjS0GopCOkVXL6CFBmf7iZlDoJEZkctlm2xr0VO6YSFWJ330FQ7MM0bP1d0LZ8/Pm/NRJEP0D6AdYXtk9bMzLRs+iXHRm5ZDmrfXqvZu6+mmt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNAQ6fmC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNAQ6fmC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA09C19425
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776019053;
	bh=B0NrA9K9J9JWkHJwugTAdNORbS9Kb4v4iuXb+3sROJg=;
	h=To:Subject:From:Date:From;
	b=WNAQ6fmCWxUAiTbrXnevar56jJcj4Okmsf3CQj3S3wkHI9H+8J0G2gCiJFg/JVSK4
	 GT7ruJoPjeMFZ3BzVywi93ClETUJRwkcN8c45IpMhwa4AysfRa5JMiEFp75KbPDa5q
	 fhT/xVG3P7+MfVs4UbZc7xAIwFjSQSkSNl5JPvH30HvvXcSvgVFOLvJZWCG1n2ybr9
	 JJaMuBwbnCDMNsZIB+Jz0yH8NDI7xZT5XWF0T6qE5kVsrnXuFpiQvV+JDILYMgBX1u
	 TB20Ph6JQuZuPq/VeBKvLdyPefTfk/UNrtbrlW0yo58SIFObMm/HUOdx5bicRWlHsp
	 EDur1v1oV81Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC682E937F6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177601905368.26300.16129034794744019473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a3006c09126768c09f3416cdd70f140f5f5f00e134d68ee433e448aae7283cd
Date: Sun, 12 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776019053
