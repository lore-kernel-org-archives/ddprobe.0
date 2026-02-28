Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E47824A3
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772255094; cv=none; b=uUA1zY9WU0ld9WhHsA+MPCfgXbhDlu6n/sQFzzAgVj1CbgJO7N9l/Dut8g0QbkszYSk56BrOEZTeP6E7bCPw1YEC2r6HPHs4FBkkzClzfegXl2irihmyYSPko6o7KhNEhA4JV4Iw7DFCGmYM1ebBp0kAp9zxnZEd2ihsAcopuUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772255094; c=relaxed/simple;
	bh=M/z7a1uOQuoWk+nEL8tHen70C1cTN63P/XN0hLPaleg=;
	h=To:Subject:From:Message-Id:Date; b=TYko1AyeTIyd23+wLn7DtIhQmdyddfLGxRIAjQkq0RkN81WvdOajRaqi0BGuBiGZ5Hy+N+5ybYwrr7GEMRSFt3J5272v56y1imDtehpHRUQ019W64tmhrkCj2E+qmRIHr/U2HscDWaVPy2Y46CPTafpYq1DNvYNYfc83skrWcCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ti8OqZdY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ti8OqZdY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B31C6C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772255093;
	bh=M/z7a1uOQuoWk+nEL8tHen70C1cTN63P/XN0hLPaleg=;
	h=To:Subject:From:Date:From;
	b=Ti8OqZdYtvx+YeMo9GEKWj6Oq38zxvw1XEGgAHOUtrb9OwUb0A5bCiE45+ZK/DjI/
	 hY4nvewyXrozhk9IDATn5kWT9ujOHSMkM0EOO4dh27x83IciJ/tm5v+cut9F7mfTCA
	 ey9YDT2D6sObN5yuuoVzHOvBIT+P0P3rIB9nrLXY1u1FrJiSdfMID+FNoo13auC1e6
	 JzMFdpzOA/zdPaMYZiF9qjWB/aIZicwQmKgYtheWY9F7FC1OJUKa2uJm5Afp9rD+mX
	 sdBh3HxaziJgT0TLdA9LBfDiAYqmuzFhiXpmrXue4r1ZVaU2tRnfIuBcBdy0ryLpUF
	 NsHoOjFySYIRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05E8FEE4C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177225509361.27439.12809169097509843197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8dd74df064a4f4d94b8905af159d3bae5635a53210fe347b7d8c7b2220e2362
Date: Sat, 28 Feb 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772255093
