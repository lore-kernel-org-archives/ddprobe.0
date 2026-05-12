Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD326379C27
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778569835; cv=none; b=ZBVqAhuNmvuvbgjhFVbDqsuXRDfCm8WEyke5GAMOv08F4eplSYlsIl3SB+rgpjIAVSjS1b4oKinjxJygqyrTsjKyM1wJOLiupZbCy0sXRJ4JGGNsmvVJsAfjlrxWO0TacLhczRQ2W6EJtaciRXm1JXEiD++bMxHKHVz8PmZ5/qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778569835; c=relaxed/simple;
	bh=ho+afsRJoVVU4C+CWECIWKgEMWq0iEH/Mj7WIBSEkhY=;
	h=To:Subject:From:Message-Id:Date; b=aMPUPAMqUhVsfk3hBk36DhlXtDaVc/O00gPqIQfRWi/ZyeFgmE8ybf6HdNU9QZ50hDMLaQtMm6tbX4sRalK5KhJ/9bBvfc4mqx+6GgfhJ3UT5pkLABkYNR3MCzMaDjn5rSQ441d4E3vARKemlZbrZDXm9t9+W0ImlvMk6dIPLr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zd8kSiCR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zd8kSiCR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB1BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778569833;
	bh=ho+afsRJoVVU4C+CWECIWKgEMWq0iEH/Mj7WIBSEkhY=;
	h=To:Subject:From:Date:From;
	b=Zd8kSiCRMHzbTa2asCfbdQJO3lVc+93SVc1LLMcISQzUP29vz230+EzHgQAeyLSjj
	 79SYI+q/ddCLcsWPnlnBdRORsgoyhqEpxhRffiAN9V48079jUxaoC6+YanrdEg/EEh
	 p6umsGCYYmovF4u/DZxL81uLPheZ3+f5tenYj3pZ2QbJF65WNy/mHV0leDRbifkwlD
	 MaVT0fWZtFXkkeP/IvYkS4QCQ1fOdOc+fk4/ZnfHha9GPvh35ZUzfezKbGibrNRA4J
	 e2J5xY0d6IGIYPGBnuUh3uDXEzEcuR60aUV/YEmAQOQLpJ2dS/p0pJvyY+SBqwMyuy
	 1dGSV1YyQBacQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18ACD4855
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856983369.1727.3415199862500968382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d38b09302a382f43a24e2999311cb4413fc312353ca6621f04049102c359c2da
Date: Tue, 12 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778569833
