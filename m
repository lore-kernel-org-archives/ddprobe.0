Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC9235664
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B2EEC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670357454;
	bh=a17SsKGJxUevwX972FMJsCqsn+DdKHDBU9rwUhVqHMc=;
	h=To:Subject:From:Date:From;
	b=YR1YRlTzrqnCQM+V/ynz13iw/mFzzOi4jJJ/eHL9+9I7DIEEPFCs+Vk90u1SZE2i4
	 mJUuQge7fdYIUoA1aS//CVBbOefcL9m2vReucuRjdNdE41RmvAK8A1S7Yh1MlijI4g
	 +PCEQ96YPzBnexNJcPR4WQC/bR40CkZA81Hr5o8VocY/7HT778idoDbu+sL8jK4UFl
	 KCgAbkqALCgYnS/gxHLv7/TIwhLo9SHFOcu1JLpghI06YYgcVwa7/+IFD/dLolOexg
	 UYLIZoR+xXDmlk+tnAtfhLyRxsZte0rQ+oeSTktpKWNfIe/p7Jki/Nx7juBc4gopls
	 7UPJYFGYmPDlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5967DC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035745435.23531.2923099379733401693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd095ede6bb396c283bd454adbc6711207db09a6c2e1ff8607567af2ae764c28
Date: Tue, 06 Dec 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670357454
