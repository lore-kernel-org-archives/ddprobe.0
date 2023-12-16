Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8C731A62
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 17:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsCfDks8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8B8C433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 17:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702749496;
	bh=f0DwFwYTfeRC4mL/zeucivt4ToSlt1vZE7rlxHye3Xk=;
	h=To:Subject:From:Date:From;
	b=fsCfDks85y8Vn2aOYN+nXmWXJ2llH9hybsMD89JltUOB+sOl0uchX+BXICvaEZlhy
	 hL+hnU3cYr65PydNyLRZ4S5F4v2SQ0cjWPgGduXGR83mbXIkwVMyOYqWJhXKaPEOGM
	 7aZP+9J1LqtKdZrTcyLuwcryqJzmo23KtCs/V22RoZB4Dy/POJIF0XwMsSDjX6nC7W
	 GJ0W2OROUnZz+8xLtY7PPcwcADMSouuTjZzygKFJDXgpP25O0r5npFd6rYEEiS72a8
	 VUM/4lYqyFRLdnae/ccwmTsB2Vu3AFsAeQOWyRtGxe+c9ezdJU09nEBbCzyxecyG+6
	 UBSCFnWCjBgmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D528C41535
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 17:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170274949636.1646.14574090888929824662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a2408900b65f8eaeeefb19fc0c2c1e2c1218cd691a2572d90ec331293102aa
Date: Sat, 16 Dec 2023 17:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702749496
