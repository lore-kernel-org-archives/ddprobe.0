Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0706E3128B8
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773810294; cv=none; b=GDgAjk2Jmzl3d1GSJa0bq3D9voKI5x5U75nnhSq+9vJH001y0Wn7zTmYqfKfKGG0gtKYni7JqEJ5HPVEdbqeabkgvdNO0ash7lViqknicHK/0G6UF6h8hIJkz2Oc4XWNJDuor/y+Wls843i7cU7HJQNlpP1q37REYAbWfJ8U2N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773810294; c=relaxed/simple;
	bh=Gv0U8Hrbs5gLuXT8PkUF4idc2jpiatEIj7WNKnxOhJA=;
	h=To:Subject:From:Message-Id:Date; b=Dh0+m/TuvfHRC5fI5h55DdJe/CXejlfg0fNoSczKHVf9MFDqDcmG6LKiw+Jaic2uKx9B1T2BM7gEZvymho15alIK7njeL+e791/wgvDrlJrFPK/lsv+A9hqL9w6AdYqV+9j/3zXsqhXPkOV5Ru77KoCa/txW74c+5BlY5X0sbcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GidnzRzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GidnzRzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F631C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773810293;
	bh=Gv0U8Hrbs5gLuXT8PkUF4idc2jpiatEIj7WNKnxOhJA=;
	h=To:Subject:From:Date:From;
	b=GidnzRzshGQ2KK144nBE6q4vShLBlbCKv2gI+tiHtk3WTbG07EFWpbEWvXxFNI22V
	 8Y1s5p/w7uZD9V+/dH9eT0mz95764+A1lm/rRtl9vYuRnfoaZSQS5YQqPUa2efvbrh
	 SOvQ8yoWPgq3razPK3ISr54UO6NmVVxP4gEmfXIF2BqtaH2t3YwHB9ZFLq3yipP59E
	 zrV9uBMKWunny4yKidWy3CgMQ2orwzRii8Q0BG8UEeQEGi2EH+vtRkNcCpAgTz7rUw
	 2wYBmnOVDsmhertMlMaPl1JMq24M7VhVg0Enhd5TSua9DmMFHKsV2TRlrY0Q5SVAdR
	 0kZZBKiP/5U/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEC5FCD0A8
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381029358.17234.15201340572807811810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd47d1e3a14005531415d7eed12085edd9d63eacb1dcf9de174ddf2582f8eb32
Date: Wed, 18 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773810293
