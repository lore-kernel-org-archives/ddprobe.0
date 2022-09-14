Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B823C15B3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742BDC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663126853;
	bh=eBdXMS6E/61lR4noQfcl7SPlKR9M2lRoJwM1AugS68A=;
	h=To:Subject:From:Date:From;
	b=KeDlX8mtmd88mVUeeZCZYoGd2F+9OUsaiN9W2c9o56n9sr+IAgd9gnzh7lyHyzrug
	 MqFqfJ+EKGx+Ea0+pdbUH9virCAPsAbjgnBEzVQ1bViIQTTDubj8jjMQPLCEf8k4E+
	 6if1IYcN5YTHx4w/VJ7aC2R1Gzfa7OX0qsFe/4RZH2bGtpWVsZNhQgC+wgvxmugC70
	 UvH0RK0fysYHkS1No4+LMQfb1MB9dCrT6R6iMmtYwdm7NYZI5Hwiw1vDGcsnqO6Zrz
	 DnoCzFISd8P/7WRXJLuZ2oIPmToiXw9m02h2TA/dDUfGWzhOT7pZiZFV/h/bYqR+NM
	 nEm2wfz89XqKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58CD6ECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166312685334.1460.17409573875658290195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f6816443dab50b9ca9f541de055abdcc208823e0e59fec67a867ef39372dff
Date: Wed, 14 Sep 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663126853
