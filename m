Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB1F33C4
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FBFCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669564854;
	bh=o0Xufsi+KUEXni3bpUCvL/9OSnP4DdqY7eM6VBTXwGI=;
	h=To:Subject:From:Date:From;
	b=KTNHRoO7hd8DuPN7WrBxx9m0GEnfb46gc0ZlSPQV1fvMn7pn73DJmBtVw4WyGqgfs
	 U4qFSo0fz/7q/OGYuMsGhf6zxH1zBgS8UlXQZvNdOt3JFl11E4cA1nC9Gn6cyWHaO0
	 OGi4/CGlA9YBUrDHRMnaqhpzth/A3NL1jutBHnwAfFCaQv7bHDygU6lTesyGCDwmIu
	 0SQkyYYagIvID3zHcxtW8VmFJkSCCT1ESYOQ8msw0BJvJQ3gIvrs5RCA57x2f0jr9u
	 5gm96bUF1NJjWGsHSr8ccm15MrVtc6ir3vFQZkkgAreNcujryE647uVLFhkFN86jYl
	 U4lc8t/0PRCtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54BDAC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166956485431.20786.4217079634878163837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6908f620091053148ed1aa96405f25167051fb23e0fbd10a5cbe3ccfbf66e65
Date: Sun, 27 Nov 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669564854
