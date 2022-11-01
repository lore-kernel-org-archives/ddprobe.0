Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B3B7C
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B94C433D6
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667307654;
	bh=Z49erTFCWy8VXQrRUIWjZe0qO8fmOyXyv4NsZ7Ujb0U=;
	h=To:Subject:From:Date:From;
	b=tJNudjKwytVE3FTWOExwehIns8oEWhg9nZui98jT6u4dt1poGRrNE/Gd1tqUCgXRc
	 d74kROJ1xWJilROK7ykZD1oe+bbIYQzN7cnN45EpMcKAlK9mZg2wNfm/4gLYJzqn1T
	 nR0mHMp37FUtye7qNb7TARP/7AWeKMFVHEd5DstQzRwm+z2tjVxVQqIC83QU1/vJ9z
	 tyUaWf7ncqH+Ty7zV6HNXYG73RYvj+Wd8lBgORNRro3g2V2DK6IgrDb2ZWlHokTshJ
	 Q6ltq2IhYtSjQh8rqJ2T55Mqy3MHsA1lCkrN+vWcUbI3+99PhF49PVkCOATG3u+sHf
	 qtHXwT3fb7nNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6065AECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  1 Nov 2022 13:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166730765435.7422.16164660842223384797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed9587f5cd89a24c8da01ad322f46032fa086d9fb7b5da8571ca4775f1afcf7
Date: Tue, 01 Nov 2022 13:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667307654
