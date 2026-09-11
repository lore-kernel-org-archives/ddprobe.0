Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B75C4B1473
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789151434; cv=none; b=Gt24BTAywxTV12SlBwZsVPLq0fmRS0C5gbELLJ1NQlHtQemqlBJvbK6N74M/J3key8Gui1Kf9TUyXxpPhtxjbAr42tnnb4Tm7v6e6BWbadYsSzNX+s7SrnV7qrV+V2SUajEEpS6MSVuR7HGC4jBWcbY4Lwh/tcK9mIJzIzxwaec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789151434; c=relaxed/simple;
	bh=MxI1a1l3hYegA4o3UmLr//dzlcYf/QG+tQDeWvNlaBE=;
	h=To:Subject:From:Message-Id:Date; b=kpSegwpBEXkQUHIGrbgOdr1eg942+GX9QFXIvi8Si7Yn62fU2AKQkngYQvXmWG9yyKFQw8cBfhHKuXgQmSJBSJuCIZwh+NTnE+FdiAMiFCp2s0oN+HpNfB4n7QWiD1Lisp1git9GLfOP1PyLcgLQpMNLXFS0ZV3/w05+V4TwV3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M6lFdyVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M6lFdyVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E406CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789151433;
	bh=MxI1a1l3hYegA4o3UmLr//dzlcYf/QG+tQDeWvNlaBE=;
	h=To:Subject:From:Date:From;
	b=M6lFdyVzhhDgaK3B76OzXFlax0PeIMf4lZqKg1MUWetbpxG3VXh79YbwvchklKvbf
	 maKLEPXQCDXTxd6XZzNy3k9fpsJeX9q0nCd99mXaABoYMXaaSHPlYsZ0Ti8LQGlHHO
	 iP012C2sJ5dJCQaGUhh+Y1GTYhvcYL+ePuIBTWsVtJuEfzXNeakN7xBvUSDljuQD31
	 gQNCnSOH1Rkfbkpz3J3V2NbDF9rU2K/ENlb1BW2O8BBq3N2aCD4RMtB8urMSsZATGt
	 Z+nl6a0H9gPq+uHCZrYJsEOmL9woMMZf48Uy9uv567IKb6+3pbYlq+Z72V5iv8c5E4
	 C13T561Xb5fqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7ECC88E53
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915143376.15699.8916711127976660888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 616cfc2bd715bdfe1509826b47a72c7913e2d496966e6da0066dc834f807bd14
Date: Fri, 11 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789151433
