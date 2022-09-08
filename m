Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EA85CA6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7061BC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662666053;
	bh=Wq8rduVtzTe8YIXeGaIih3xA3f5hGvkjE/EF9Au6x0Y=;
	h=To:Subject:From:Date:From;
	b=N3YoZaLXj/dLPTULKXGJWHnLi4Vuuko+LzNu4IVvVVp/hYPbkafd2M5MIlHLqXrMD
	 8//5P2SS3v+z2XU/J3NkbRl4XRgI0wFvz7idnhXYkJs/JKfFo8Gjsivlvhq7TirVIh
	 /U9Arqqkrgkajg6c54/u7wr/itOcLOWudMvOYvmyMtm4zpN6I8m2AxWAb53eeu9JSN
	 pZRVdDFRDmO3oKgjgN2okApTcyZ2B+eCp5W8pA0HrIvVjOM6QvhlMaBgWFokrwuFN2
	 rqOLCm5jkb/P1SeijidF35YFfiyB4lVb3CTVRLc8Ieoh51ZbrNV14wf5Q5d+o3ggp7
	 hjKJu1kvycimg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55566C38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166266605334.29389.16923178165883328650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8dc4aaecfa82c511f828c7ee7e9d156c0a005cf634ea75328157f935600a6bb
Date: Thu, 08 Sep 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662666053
