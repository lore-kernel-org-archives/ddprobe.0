Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10581FA3
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68420C433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669204854;
	bh=QKogbRVwd62OyoroBxw5KdSHZj1f1tDy8kGpaZ6qVLQ=;
	h=To:Subject:From:Date:From;
	b=Mc2aSE56GBzMV4UTyTJ0hkp52k7EdYIK5q5Aac+knCS0eUBnuw6PgAH9imY6sopmZ
	 NH4QouTnRUB6S/aej35GAhgtJbVVAwVht29gS5x3uggpyDRBeUvUeEnEGBzorsrb0u
	 eUGtUN5wINbNU99Ul4OW1dX07sK7alHorOfhQcP91NCOtBGMftcofkxWIwHBtEW7jk
	 bhkstK5eZczR3cwUfZy+HT4jryM+zhZiXDW7z7r5LrB/rVsZhmgBxuNDckXj9rRd7n
	 If46JbtkGEsrwlaerV8zSuuYM0LD2EYqAR9k50NPlI25C/tBIrpdP3dRrUVuM/oVkk
	 FQTM6q2WMCHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 511D5C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166920485432.2604.9707135784723478064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d01dd3b043e697d243127387080e4c2aaecef42716130beb00b0db012aa5bcf
Date: Wed, 23 Nov 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669204854
