Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7FF6FC7
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E77C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672270287;
	bh=S8BeJ+/Mlvuxc1mrJ6fpe0c7DbnCZxLqeJ48nD+dRTg=;
	h=To:Subject:From:Date:From;
	b=ZeM3Loj7m0qIl9S+b6GbV6n0XEFdRSoEE8lc+cLIhpjR7GTKnAFmZE92h5HaUb+EJ
	 vaMN2uT8j9f5ZN0kiXjsJgGngBzgOlM0vmytXdWzY9hUDbAgSqVgKw0dQ1b1+wxDDe
	 67CyCSZQ2UPGSet3AVdOZS9yJvDK5r1b+ksdFHtt68/ChGqeP+my/45+jIboiLDQsw
	 ekmmIQqsrHz5tw+Z6Gybrr6trr73XR2TL1G+a8IhtLp1r7+A9F1oJGcpF/noPUANiY
	 /8dQt+uq5NgW1GZSbMmht+tyYmIOmE4EUBEkbGNaM7JTrwehLObeBvKTI8H5PHly0J
	 VIjGlEn1Piu7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C4BC4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 23:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167227028740.29269.4994083256502650050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6f0c5e395f5c5cf0965140eda0cc55c92cae1fd907230ba271f57ed3926013
Date: Wed, 28 Dec 2022 23:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672270287
