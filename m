Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D10250E5
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVvLwKCO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE783C433C7
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697326628;
	bh=vEY05Bc7l/6CILsuIPt77YppApb3nkvE0FIbcRfdxWM=;
	h=To:Subject:From:Date:From;
	b=AVvLwKCOstEWV1kyjk9ZaXmTsH19TyDulDK7ejkSPlxqaPBbr4zBXqeVFFh5+gQ9s
	 PwKFFZs76LENd15IoshYm487eGNIxuYZhHrn5VQgt6hK6w0LrP0oTcNk7s3Srby55L
	 /th7vesejjJP6ae/4awLeVZGL/C9V/0Mcy2sxuNjRQ8BtBEI4wKQJ0/5/VT5z63U3M
	 GbFCGFCzD4s3ZihAT0lYKJgk2oOnUB3X+SNvas67USKXCD/vd7qg28kYABuHMpnqDl
	 TZGCxZQR7dDB83pVSO1ehXhBY3TV7Ys3xD56OMLXmnE2iZ75Ued/g/e7Dvqi8jGK3F
	 5O/E665/uCOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA6ACDB465
	for <ddprobe@lists.linux.dev>; Sat, 14 Oct 2023 23:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169732662867.22797.2954049013394803631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa096b982ded3eb8bb147bd6709b285745e32702bc7c972ab61cc232ad09f1d6
Date: Sat, 14 Oct 2023 23:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697326628
