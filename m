Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF248F7A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715274743; cv=none; b=AwIUuoN6qbXDn7DU3Sjy/NzmF++8NLdvvuORHRqOL2J4zFonEqrOaAZ2fiC7wtzfA3q5nQ1CRRc93hhtqU0X60mbHKaQ20mdd1no2fS2qXVUPIefUUykDJbs1bKNWVOO4WF6ngxDFTIOJyrRi63+AG2YcYTwi5rAuPxqytzqvvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715274743; c=relaxed/simple;
	bh=fKm3oYLzJvctvx2ljF1V8IaNcn8Awywjf5fJTRTJoPk=;
	h=To:Subject:From:Message-Id:Date; b=jHAehZ/+tfRgdkmOWCiwhl6XMIGyYNUtfU0/4Mtjz0kYp/x2nxQfg+40jbMYCO8iQrMfHgWffZQ2G/ph5FjR7SJmUTEUkJUksvHlFZjOM3snfz/vi3a0/oamIdsbzpe/8Mv/70mMZfHL7JXtDDiH3Iqxq8TZuMpbOKCFdkUn0b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSzh6lq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSzh6lq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0974C2BD11
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715274742;
	bh=fKm3oYLzJvctvx2ljF1V8IaNcn8Awywjf5fJTRTJoPk=;
	h=To:Subject:From:Date:From;
	b=VSzh6lq5hBwx9d2VR/FIQZ9vRCHL/xUQG05sjOX7wZD5R61vAWfrW6ggcIIQIpfDl
	 VDLFGHRlIFU/pmzQm8AU3JwNjcXQ3IswOGRMOLq7bZCTVXanSC2J9PhU+vyYZwUt+S
	 /lUYJ2j+8gIYrv8qnyzHBpM2U57kt0eqYOJb0DpW6p+TkBraR4HqWmFKzjT/ADDhhK
	 1LOwYlz+e+xUZMF6EIfSjM8PU/OxWjZRwYKXu7JDvMOskN04o1p6KQ9hLeawVSmeOZ
	 a8IkuLvr5M75547TmvOXUBJD758uoug0MnuJeBs68xsl3RdSewtgm/z89vW5RetCFA
	 Ap6jzZs4r3arw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC815C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 17:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171527474276.16846.3033999607991866438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8ea7db5b4682383ed527343190a7664c09d705ebf220901172671f1fc650a5
Date: Thu, 09 May 2024 17:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715274742
