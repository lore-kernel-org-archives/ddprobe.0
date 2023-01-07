Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D456C1842
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83305C433EF
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673086287;
	bh=5whFZOBycGvYBorY0ug+f70cDD19V44HmQsaMC0XHlo=;
	h=To:Subject:From:Date:From;
	b=uIuA6s501Oeayc5CBNJb0YQYnbWaHLDRXKBxwSO1gOf5IL7V3cL/EOik3eFAQp0rm
	 blWzNkjiHZh2DmCV2pvL3DC+pkfvKN2OHeKeLD0OaQyeX/yOtEOUPozApAldHdC8qo
	 UP7JgxS6yrQwx0TpWreXEBBdwCzUmqTMnlfOu7e1daxg8O6YHIQZ7U4lnoC/CNJONv
	 1lN2TMl5HSC61xi6S6M9Pl5VHu3/aU3ZXc9di4P/zDxODcSV89xKF7mSbaGtJO7Pj7
	 I3JAL+RlaQPi3JC9u5RQnrl12EYbV4oaeQpxpYbQHrbyKLXM/wJfTKAswo3cAkV04g
	 UJNsGAI1LBIQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63C0CC54EBC
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 10:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167308628740.13269.989730461091161020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a778930c6b6a0eea16b4560b3387c5b6ac7b4a97c56d6914eb093d61924fb8
Date: Sat, 07 Jan 2023 10:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673086287
