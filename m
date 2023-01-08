Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D7E256A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95A07C433EF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673200887;
	bh=xgTLQ4O49ZIOLOC2qCL9HdMHjbnl8dLHFg7CvHgBuEo=;
	h=To:Subject:From:Date:From;
	b=pxWHwIkrtVYWIV7opuE//BoJt6GidcqNbDEW6De7CU9hDF2m9ZcvPzHCw1UYD9Os7
	 r8vPg+cH3ch3WuzUsG5Crb2ke3gziAqm9/FGUEPJu+Us2jfmaoM7h2CZJDypxvwbyE
	 PbHJOh6dIMvblbxQBObme6P1IJFeadz9YRbW3RCpF+wzpwBF+ahKxj2CPfHlOod/j1
	 ACEEnIozVW9b8bFDh/xhVKuDF4Pg3w4+n/R+5xICy1uDQMq7OESBeGBo9HHJ88OF2c
	 JpxcGqEje3xm88DCYbpF3w0SnqTaYSlFFw3c1Bs/NLyN2RV+TlUqVe4dYAMxfsiIu4
	 zC6xXbGOn/N3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A86AC53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167320088748.22457.17786123329811017959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e80c94d1ec0ff04e798d923aa5c35df7d8f3f0d79e306014039e91c5f38ed65
Date: Sun, 08 Jan 2023 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673200887
