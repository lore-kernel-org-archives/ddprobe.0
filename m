Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD44E181
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC1BC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661748652;
	bh=/eeFFc9pZaPN2h6Yn8I9ClghyXcPNWOuTyQVGoq5ik4=;
	h=To:Subject:From:Date:From;
	b=BLjZCXpKkLYALmgbFJRvJA+F3pY82dS/Les3A7fC+r3J/lhWtVZ19rvx+K7s1F3G0
	 ojWDKgYBTQPBGdiuicYzposlXXjYQeYhfwauktYl86iUsXQlfPk4hp3ZIKiu4fb513
	 eT/nyAQwM07Mwgbd+LHjN/wv1U5Hnas+4rYgm2I5136sPdHgo4ecugxuXMfV5MDCts
	 QbmZtBomuX9nw1Sz6J743RVffeUOGwAAImKAXudkpLwN0HXFrgblKfuyEPLlcaquBU
	 KmxV78y1Kk4WANsDbtGlecceE3nyVQSU6txWtpAePtqcsP7Q4rNhlkhiGki6NZN08d
	 03wIlroX0rJ7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DCEECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 04:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166174865233.30986.2350249311467663249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df2e68d82ab616d9c41e1317ab9d42e50bff8845cc97511f6ccd2c4b5a23dd6
Date: Mon, 29 Aug 2022 04:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661748652
