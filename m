Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B167C
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BA2C433C8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690504328;
	bh=cwH+SF6nFtodoonMlraBNo+4ro4NaVw929ScH9yGwxE=;
	h=To:Subject:From:Date:From;
	b=H8yypcJIeMesMpbDni+8Lw+zfWYFw6gfMIDLFYO3/vZuQX0NbpYTFAmyRXzHk88yn
	 F9wptBHVsOZJ6fg7SZjKxGgJ8oft8/VHb75hDbQQF/oS3yQMXgY1CGye4nNLFjdCQ2
	 UWQv+o+al+lspakky9wLkcKr998lgRdQozIWgPurrHYRCR9ELGKwrIAFzhu8GgIuA7
	 hJcMmvVRqbTKf0p+Ycy2xuzl0llWg8po5dNnMjkvypLvPlLa3XhqSnuPTdeC+EtAez
	 xl03jgl4VeJPp4KgdYxyi0Cbk3MbxnPjJVIcXdYOB23nvj6KEiYUwzguAd2YEVnvbA
	 lLStWYOyqd2sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F86C001DC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jul 2023 00:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169050432867.22766.5680613773802707450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 613c3c04b6ece5bbc5d61e018e5a3f2b05876ccfe098e9098d8cf3b5edb91ad7
Date: Fri, 28 Jul 2023 00:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690504328
