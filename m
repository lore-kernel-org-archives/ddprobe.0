Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5112E403
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 12:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713442763; cv=none; b=O2juy6z+lzwoXOyvs7mqIblqozIJWPJtwF6ME5IMMBmuNR/zJMDxPFyxykHQjLbCUc9gATdbHjFbT4NbVmt6z/77qoXrRCJkdDNnb+hmzrjH48PNnhkn7WzAUsZSRRU3/2KpesuM6zO9nMJPWgQy808Mbas7h/+I8BWduZkVq4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713442763; c=relaxed/simple;
	bh=/r2oFU4QISJjKgBPB9BYgT99OJDDLEABgw9jYIYFCzw=;
	h=To:Subject:From:Message-Id:Date; b=A2es4x++STT7HyEFaeCfYogwXB+lmZJjyEWCGLM3Qaf+/PB1mwh14sp6MCGxeQIuGYKu8nqr8Vg9B7F1MEExU1y6NPqyCTWN0OSK7cra4bXhjmjPOGAmn86x7tNcorF6ShheGZb2KQCW4HZTFWWzoveo7CtEp4jZt/sBRFYQiPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYqPa97N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYqPa97N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD282C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 12:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713442762;
	bh=/r2oFU4QISJjKgBPB9BYgT99OJDDLEABgw9jYIYFCzw=;
	h=To:Subject:From:Date:From;
	b=qYqPa97NDTyrt8WDnRjVJ5S4mslyDOJfS3sd1DqM7wbVPvx1wijcUJJffmP+z5OrH
	 MOJLsLgmQEy13egNmn7Ib7emP7p3hx6S4YbITOfQQamPQjrdxAnp4hqadf0vi4ySnS
	 gBNY2wr7EaPMl9hXO+KVWJzG6X/GQtTBts5UtwjFUZs/E5dNH16pj/K7O+qEUtHRS5
	 iZHMnm13uHj/XPr+d7W9hS3B1FfNlOLQSxdgI0dRCwT3LeeL0ovvXA+vHcQvbiKf0S
	 Aud7nHUt741Zd5KbVpUPfBX82xHcbbyIBwRhVXlEcUY4U2P91ogYdpXABrxBsXsRFp
	 q8zS0RB/yOeOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C766AC4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 12:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171344276278.14107.12171818783194779690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9f1990b73be7904c5c0d1d45f9dfa55cdd356e4a991c671f1fcee56ffc6d66
Date: Thu, 18 Apr 2024 12:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713442762
