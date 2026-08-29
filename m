Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABF9394E80
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788016834; cv=none; b=FjIIX8beig2QeoQO7sxS1xeN0aNddgr3HKe6Bm0vfZPcaHp9JJcGMSZeGPM+cLLPwn9q3ia2df+0ExfB4I61Hg9ijNkJZG5sZOOsOuaEQ3R2gXDhmxq39WA56Yro57lEQCGzO34phQvzDVM12Uqg/FXs0W+iONbj/kgGZX/ajc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788016834; c=relaxed/simple;
	bh=NuMHdhiTvCHqCIjJh/kUBS4xJ0tRtP3h1jjrQi1hGjk=;
	h=To:Subject:From:Message-Id:Date; b=ZcrZR3l3ZrrSiY/PRJT3HUidNCqWdqU/g1ngWfdr717tpxH1yFHTQmOje18MiMbuUKQKcii+v8rXx3JQNWz9mJvRPN8YAdmez60gj1AcEzgS2nd5jW0TVqaaj6mPuxjc59SV1T89Kk8agBjT5yDy4AtQchcl9MigOOTRAFx0+bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0qg6ZqO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0qg6ZqO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD19DC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788016833;
	bh=NuMHdhiTvCHqCIjJh/kUBS4xJ0tRtP3h1jjrQi1hGjk=;
	h=To:Subject:From:Date:From;
	b=L0qg6ZqOxVTk3IhnPDROyBn9iQingHwsUuKHpekD9ha6ta0ToIoo9w5dn1jQQFwsR
	 medg6nJPgC4m/+S7TQotWbMQiAHZRd9QBXv24R8/sMLV0x9z2Q/swqek4T5qFzjmQu
	 zLJ6o16GO3shmBcaO2xEiAaOQoltVHpRi+CcEU3eO67MEstjUibHSIw3YVCT0nmOXq
	 Eui6459EJLvXvNPTW4LlbKX/uidKV616yCy+tH1fdrM8FaXMJ2YUKip5ue/bsd+TZ2
	 1xBPApCAMjTB4inLQl/9Eq1hOtzMyDm3o++L6iTXk+ts1ADw0nZIvnJpvUpXeewsMI
	 GOTgBRx7yCuGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8EC61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178801683368.31771.7838448848349375508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccca0757217ee1ca7c2b95eb78552c81ea8f0d7bddb8a1a16cf80583e5b01b98
Date: Sat, 29 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788016833
