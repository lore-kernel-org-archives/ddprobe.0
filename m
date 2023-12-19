Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05551C123
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VG6NU0mX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF63C433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702960696;
	bh=SNxmIpn2L4Ziz7vqxsNJjvkFhBN86pi7zLGjSikBjXQ=;
	h=To:Subject:From:Date:From;
	b=VG6NU0mX7agU3gnwOxBJby1cwTJYL+MyeLNWwtLGx5xGgkxm4fwujd6YQEK8Nb6tx
	 fJUGayaRsNGMXRVWpgdM07RxeNh36+WzbGy/OhFiaYi8dGiuKssMWFa+UyO1T7pU81
	 0VA18R82jBA06zqryzTjAriTu/OXhJtrw7GFXY3G5dJsz3Ut0o2AjB2JZFVsLfnCLq
	 5J5GJu/RdaQZLayGS0XybO9tgoSvOGzflksKpPDKz9cwgFyJliaxJo5sROMwy0uWBB
	 vJX76BOn1iow3QFi1mJLmPsdGV6qhT0ImfkZvaRx7lLhhwgY9OcvmsJhQqgNr42a3z
	 3w0a7uMHP/jqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DDA7C41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170296069637.6223.3290740079610428938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6ae798207ddc354c95bf111e95d55944b564d01bdf3eb0844c77417216f469
Date: Tue, 19 Dec 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702960696
