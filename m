Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56374B1E5F
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746512393; cv=none; b=c37V0a1CKzToFUlAQeIJamGozlPmnELgjL+Kv6KPJM+grFxQAlL5Q2rVk23Cx+cEl5UbJoEkB+LcJ1XPDHPFW+8UQ0BS+kYzUE4vKcut6Mf9apdFpdkLzoj1WOFE6PgaWftAcwS/pkLxPpV2jUcsw2oi4EE7qDhgSN0lxODry6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746512393; c=relaxed/simple;
	bh=pYuSL3NX2QGUHByjiYWHQIblCg0uBm6CiDactOUEOQ8=;
	h=To:Subject:From:Message-Id:Date; b=l5LlUdGBssjeISUPfqLkCSN6J0dhYmeOBeV5Hm1qtEaiJd+t22o5vdZMzOhkwAS3XBw9V81MZgVjoLeUqQCQYFuTaLqGXv7pXqSMFk44EiABvmDMp/Zm5VwCrFxjPe1nUxRfTOd2jW7BSRubLlHWq8DRHNzjnljs5wGZjMMRWEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZbhgmLh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZbhgmLh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DEC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746512393;
	bh=pYuSL3NX2QGUHByjiYWHQIblCg0uBm6CiDactOUEOQ8=;
	h=To:Subject:From:Date:From;
	b=BZbhgmLhrrx9TIyTER5ERfMJCVvtYz09H1jMnwsoUI0ISzHRR70B5+5K2tcMSGPzw
	 DT/9RWSK0PoZZOehvSlvLFnpRKQGIxclMNsaN8D2LvR2ueIVohpAyQeExOUk8swURs
	 7lQ9u9YFa254mYyB7LXW4qaRA5puvXGcVcQvRQGXXOFw0T8atsNBO7k2l5s7Q4dnyY
	 zhWCIf9xR4gtfGAXUQFb7Jc3EnUDKIbCkGTU+4Zb1ms3R65f2hyF7MmWRjLzfFQREl
	 IM94NfzYKbKh05RGnA3BJqtxAhvKeqZXSsIdNS5WaBLqMoG0c3t3rSDdkMlBPwS3lt
	 uMQGuyFWpH+6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9128AC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651239357.17073.17913696265137322879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3ba07569ea28562e63426885cea485337eda92c1732d70dc2ec2edbb99b52d
Date: Tue, 06 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746512393
