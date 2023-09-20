Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6884D41A80
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 22:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B5EC433C8
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 22:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695247508;
	bh=aTk/Od8W1Bf5xpfJHjxZIZ/K1yeBOLtCsTG5yRKeUjs=;
	h=To:Subject:From:Date:From;
	b=rpUIIrB7GswNxZ0dlKqXzDN09dMmll7Ba+2f7ReQTGbodr8j4K6FB+4efKspDa0IQ
	 B8YdiHHVU23WsX2vxfNjJXgFXCJ2MI7KhfmU5ZATo3abwIgqWkmfy9wv7KphrTV4Y9
	 Wudb4/OEV5IUXM/GPjnC4wHSoFwHnlMV4O3ZVmmBOnvwCcqmuGaavKF5gVHoUsPjdI
	 Dtm849v0eESJv1SGRj3KsOzu4WAn+nzGAhR/JiZd+GdyFjrDDl770nEBFrub1N6HQW
	 Sq5+1Z691OoTo2Rrj8bBhJOI8JO+Ivpckitnd0UsAtU0DclIEizLcBzO8HWPIfLdlM
	 lZWGrYH5RMkUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE70EC2FC08
	for <ddprobe@lists.linux.dev>; Wed, 20 Sep 2023 22:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169524750868.22332.5593298756595695856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b725b2e73adf994e0b3862c3eee901b5e311a0949ef275a0c0292c086d1595
Date: Wed, 20 Sep 2023 22:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695247508
