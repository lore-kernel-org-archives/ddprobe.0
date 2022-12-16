Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F638BEE
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:41:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECDFC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671226888;
	bh=lfE9ntSLD3vOaZNDMXizDlJPoSehju0arpDvHvUD4So=;
	h=To:Subject:From:Date:From;
	b=hoNHn7HUzQ3FJ4XSynm6fLf1bd9q9JZV7R/BLLlp584ep1mmgwqMK0ZrHVUzU1Vr8
	 m7DJ/sV+nMNUgLjohl/s2TGBEd1E71kj0lPhszhRrisKuqo9hJiUc6UE7gBfOaQ5NU
	 q3kdDQORw+JfYcr+l+nYoovK2EIQU5mTq07F3ynzcMtGEy1eiDEUmTcIFdGA8/NMZo
	 1oWhiA3iGlTR5Tr3qqmwjeo5CvydiKPcjZuNkRSyLGBbGGuVDhCn4n5+6vin3MMgEY
	 84nTeITeAqM7wDvct0o1UIrtfiGJL79iffVKKJAVgBbZO598Sl1pR/jqZ13XQXgbOQ
	 3T/gHFJ/cGL9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BE9EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122688749.14580.12637037065635685555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd4c2b8ebebbaa3bbfd24bed9ffe936b4361ce4f75599ba6f09223b7afea7ce6
Date: Fri, 16 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671226887
