Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D484A8494
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8422EC433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672924887;
	bh=C4l5AtHFZ6mQeXclCxElKhor+WSVJ7g/wZBozphsd2s=;
	h=To:Subject:From:Date:From;
	b=B9/LKVHwbJcvesF7+/HEcKgD0ErcJc8kItynueJOBbN13eZ8XdR3yRiB2IzVrc0Yt
	 qbFLS3Sk1sy85mWkur9HQYpfm6dmAAmOGpiIGngW2BN6sonpKma0KD6CnBh8Sypk25
	 qWOmc2cFWUnfhQ1t/I13dK6L5jKj/tarksys0q1oF7Fcz2EOKznGn/xIqdITWSRaxn
	 L8m3nlQT6zLsmOy0WlTB+ptrUmnA07QMu0rq+ZrtiHxNZzt1s3gR6nMVl8H8LumW7Y
	 KqWyAfUc/TqTb2Ydi5Cnp2i3pFjgU0KDRfiNi1ZH6uLPgJFs9JSEiaNBKhb5L+LSqB
	 b5YkT3+lWYGzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BB83C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 13:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167292488743.12196.3389173290399887072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12ae56da6de62bfec05ec15a73c33571275e831d7fb68cc7a8fdf14a81a98a2
Date: Thu, 05 Jan 2023 13:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672924887
