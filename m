Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F0A36AFE
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTbNSMQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89AF9C433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699470496;
	bh=R2R5xdZ9WJGp/APcDmmi6U86IWwTaUM5KiBNSc6hQF8=;
	h=To:Subject:From:Date:From;
	b=GTbNSMQkxJBASOAUTcu2yTesFXMWgPF5qDWYfXeCpG3nJc9KH67Zr3J0dxt0sFUa6
	 n4UUokUd2On7kGbF4+7YT3yij2R0P3tKh1lvQIeNm7w0BMNquYgunSfUMGoJbtVRF3
	 WeWBdyJDRj9L0Vr2to+uR0TSShp4YgBo4Jgj+jKt0bgjaABydxS70UShn7k0zvulDa
	 Ql9Oc75dmKREpxUUvpFhzx2qdJdbcNayv7H/CpELjAZJXdhLk3wLIKi5cr2noQKEXU
	 Wqe9QSd6XZwtfgcdvtKhbYcARLWGkZtfK7eRktGoKqxrmWyP+CmN+IczkKOin8Hg3d
	 CpVAGpb5pc6LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68ABEC4167D
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169947049642.30367.6413018524551372829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec7908e677ea009e5447eb5486d44504953bf00da2005ecec98c6766c542047
Date: Wed, 08 Nov 2023 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699470496
