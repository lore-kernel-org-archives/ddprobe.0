Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1134E2DCC1F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774647894; cv=none; b=NB+nY5jlP97k4pafW9LFybeQD+r/BKR1KR6auna9/o4XkXIGUfeVX/0nY6N0o7r+5DzSrAN/8jecvv+VokupV2HNKXzfcEmk5lxAFKrmT2ym+w4o7cVEMROn6s1gClhOiHlFkwK8U82VhYTEAUv006dUnP6TZUs7zU8GSWhwmFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774647894; c=relaxed/simple;
	bh=XFdYCIfHYZLlmRYR/zU++RexJMm8oGSeKPVhHWt8p/g=;
	h=To:Subject:From:Message-Id:Date; b=FB6XzHTLR9oXjCOsaeexdiGMJ9SiJTI1SWZYoYt64XjKkUyCzp2/53DvTAHRno1SwhKXwWOoB67otvt9Jtdtinb6xAAYmiYPLYkV6JOGGdVxLVl4S2yhO4qAX4AdczJfY7TB1X+gTKa4wvHvhtCUm4O8G6p5VUGe/XD9NUdkCZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2jhhm9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2jhhm9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABAC1C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774647893;
	bh=XFdYCIfHYZLlmRYR/zU++RexJMm8oGSeKPVhHWt8p/g=;
	h=To:Subject:From:Date:From;
	b=g2jhhm9fUd5PmwYe+gqvjmZfmgWfjCMeGGn4Dt5J463Q7hZVNtSs/gg8k+55vJ6rd
	 cmF6SF55NzVO4NJGEAboqHYzQkiUIQfXyrEEl+cO/yuqMFoQNEkz+rQC3JYkTre9ex
	 Fdxy1pBKa9kbiH+Uv9wZWTj5ZIgzN9Z7NRSEXvZufaTt7OdLs0KMsdXZrdcgkMMc+Y
	 6SHog7kfPVDsRItI7Mu7niRmRIXU+KRd110qJyAVFAxC4VNvRwkL2NamW1j+itv6/j
	 VT1qjwuR4bjEyxXemkt6XBgl0IBITHFsAhfWBo15WDFN4S3PmMJHDqgvAqgHouOKeI
	 6aGJ617DGWzdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976DB10F286F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177464789358.20771.5823944995551639523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411cb136f08c96823dced77fdf26821772a259ebe430b492b02e4cf38095bacb
Date: Fri, 27 Mar 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774647893
