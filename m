Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECA932E889C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774088094; cv=none; b=HA6s/vBfGQN2WUBO3LcGVyAS+N3O9gNQhJNj3xBKSSiPQ6VCmu7rAHFkEarmMjQfteGtq3BXrcBCdKn8EgWaaCR9wvrR1uZN/3o6XLa3v0sEPMVY4XS1rgUxl2poRcRnUBJv3XJAy9Sqjwas3SkbxKCqdIWLZ67DFiQeKEGMnWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774088094; c=relaxed/simple;
	bh=sDhrBwgjCIOAkZOdGS+CiQ2crRzhWMa7TBOkbytE0a0=;
	h=To:Subject:From:Message-Id:Date; b=lwM+ktz2kaGfMeDNOvVEVO3sKHOZUwBpK4x5RlcxE3p6Z8mBx9wL/cp1uMjt2qrI1yY1gzW2lFUKJ9xW8VyVUZevDl9XUxnF37n4LUWbybP6BJCQRfwa/2kZIXigFCJfZ8goVsK5GSbXhJSVzWvt2fqNN2xxuIc6AvxLCxI1Vjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tGZ2J2j7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tGZ2J2j7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0ECC19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774088093;
	bh=sDhrBwgjCIOAkZOdGS+CiQ2crRzhWMa7TBOkbytE0a0=;
	h=To:Subject:From:Date:From;
	b=tGZ2J2j7Fb/VLepZMlejT+z/yN4JcCYpjiRtWjHYHG8M4PIcVFlx1pdXzP11D9ZAO
	 ml8qG1kUe4Ll6DRwnsLwhHYSziIV86E7aAV6nsZdy2ESQ5QHOZEX20tM80PcBglvwZ
	 tQ1FNVwqHm7UjIRvNHUWpnqslLEqlZkdyDvfCCs5BDzkfGAGmnowq20gecsCPlsAGj
	 jBIuh/m6zJtL/KEgn0+q5H4TECPccqvoG1wLxJToh2ybiOHYmqXtJadGHjW6DWovF5
	 1Q5fU5jbmxDeSgDyPvkfXYvxw/D/0wY9pxybhYrzCa7fyOSz7E/u1d9syG/SraY/9Z
	 Nj5NPZ4IOKYAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE11094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408809357.28246.2815608943442677416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618c09162085811bdbcc19ad173ca3257427f0770ec0dfd6e47300a10f15dfc1
Date: Sat, 21 Mar 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774088093
