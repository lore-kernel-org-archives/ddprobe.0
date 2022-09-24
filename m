Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9EB17D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD59C433C1
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664019653;
	bh=1KlCViAaIv+OUid57EqN085E0CL3fJKccDAs7RsE65o=;
	h=To:Subject:From:Date:From;
	b=ftf//YAdIdjJ+1xbx21qKuzwdfT0GZ7homyH68JB4dM8YwlTH3zGrQZQaowPw/zQc
	 vOgZqIUrwuhr3gexianxQsYVl2mdFrHcmSJS+2poTJKnva5GfqB0WtKMyXOU600Sbv
	 9nsHiB7czbueIi8M3STXrhRONMYjJ/oktL+hSpDVJXRDM99TqGBQzO1mQLwePefWRZ
	 HVHSsVNJHOmqR2sB5xaMCWsRlMHM9XxJlrEHCQ1L3QFp4FqWhF7XbZ3uZ/iJVXQWTS
	 /WTKYPXnGmKP8WzJw3WDcK/1Rk1YRx9ErMJiwHVql2DKNv6KZlVvt/Fv0FBl9N9uyU
	 TsS5VwPuL9aig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C98C07E9D
	for <ddprobe@lists.linux.dev>; Sat, 24 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166401965331.10100.7848362318760705205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ba1ead15f2068e2d6f8e05911bd25d5d2bbd2d4f8f18fe656d21ce062259cf
Date: Sat, 24 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664019653
