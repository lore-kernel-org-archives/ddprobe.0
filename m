Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A38D2E824
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuQgxQDr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AEECC433C8
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699999696;
	bh=/V8RPr/RHeGnXlK6m3Y3Vh+HCa68JMQGz4QePcLEWhM=;
	h=To:Subject:From:Date:From;
	b=uuQgxQDrGd83Rf0sD+WWtmo9WA42WBMAEQh6EfzuDPO7eJNzgFMc5AH0+JhAYGzeG
	 aHBOpuLmyMFV4vjdr/Ca5lFNSigqGtyYl+RNqJ+bSb+YCPriMqiO/tN4vosvHpQyIw
	 HsWTVL0CEO5j3pInXKQGzoJPAtCQhM6elt/HApVIdIF/K1ytHypqiGJ/18Bqy779i+
	 O0agr46zRoBL3PM2Diyectx7aXmtvNU7O6px0nvOGV51V9mv5D9cYNQMhOT0A/UqSO
	 T1tw/OxzEmgRznvZ/qZTA4pkyCePLdTEDh4d6EaY5mibLk4ZJFIWSkeEenTPfuMpav
	 tBd+qIqJJ7Klw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6272BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169999969638.30646.4384951897742785189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94ae99fc30ddb5094b0bdad83bd1b3001f7cfaf5a0b5a92230cdc88b39ccb57
Date: Tue, 14 Nov 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699999696
