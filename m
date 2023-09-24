Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5564DDF47
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9874C433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695585908;
	bh=RmMTyvo5krTQ3UHvquQ0k7SVs6sosZuy658AHaCa4ds=;
	h=To:Subject:From:Date:From;
	b=Bsf3bHZSUQ/1srppe0J+PRzNNSSdAmLd5PX56ErzaqbjtVuYywBiyFYfmhhkfY7Ed
	 Rm7yR/LqnFWzCyfC2hcDSDDeeSrCDehOipWTcGCRzceDAFHe41/fnSSS2VzHiSBZQ3
	 gor+bixmUo95ofPhBdkOf2SAG7NkyJiB0CcEQbPC8X5Z+waaf1FBveaMkQw1Jv9BBr
	 39ELq3ClRO7dPqz4AeIyxhheaV+MuxG4G4p2yhTk9mm8aoi5vYILqzKQPE3j/FL55x
	 KblIdWis0drBQ7LAGN6i5BHMXqneWGa8lwkCxs103JfEHOqkiPnsfdlK/kDHjctAqI
	 84npJbpOtBcIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8F1CE7A8A
	for <ddprobe@lists.linux.dev>; Sun, 24 Sep 2023 20:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169558590868.10530.16375751795474988736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02c43fda58172e3be0cd0a7193e7e4464b306f4d90b8930af43c0e41a3ae891
Date: Sun, 24 Sep 2023 20:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695585908
