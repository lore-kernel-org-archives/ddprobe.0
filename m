Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CA11094B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 20:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7467C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 20:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687551788;
	bh=EJVzV0oqfaZT8PZzTvj+HxYzf7sdIEcmYYOeshwJo34=;
	h=To:Subject:From:Date:From;
	b=SNLPvXKxCdv+9LtXohYzJjDhb49NcGOv688meqdqq5AUsa0lrSsR5B0M5xaNRTeMJ
	 Cg7zfBUCjRZ6+J4zAWA+iEIm2aXOJao+/Juj0i1dA/DFSt9gSspUok/VpBiWDDsPIs
	 0/+LXkQRMraCuv3xWFw1tEMX+bz1gm5eSZpkLdwLnCRZfLQgkPKbG3CZ3aipsicp5O
	 uA4NbdVAkmLG7gS9ZB/oVW/yL4S7Njz686ahHbfK7KgatQ1AsRewXZs0E4lZeWGjtb
	 gkirrAw0fiFZcI0oI1gcppHfvL/RPyGofkdNzOIsc0oA6Ii0DArK1d2+F5FjPx//rW
	 61tHlVXI96AZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7281C001DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 20:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755178867.16239.862778462648353377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec0d8eb1a77df76c4edd5f2a2697084a1ec304764ada104933266ea7e15b8be0
Date: Fri, 23 Jun 2023 20:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687551788
