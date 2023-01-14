Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C403BA41
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27DBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673727087;
	bh=y3go3fqNKOP/pr/Whk0I83EhIsuuOPXgPdLu1sqCd+c=;
	h=To:Subject:From:Date:From;
	b=g3BjPb0A5xZ/cmV7sNIFzuFOW2akgLWbCJQMAbQzFogfhZP92NjBaEWkNb2uawa4/
	 BGCy4eobZVu5Xg9P+6fPL/fXO/tLU9ekhLv+9dAwB56S+JQzSfjWMiseuGrsWwXNE+
	 cXtFy1p/kJ2ev814Y48mmfIViB+bs0r2l6tanDQBk6lezV2hOtqZKJNAH12RLcHbTT
	 F8zSfgLdWdWnoY65Pl3nXd3JVXYZfLQz9XLq3c/lRcGPYsIY7q+TMNi1SUQYBLPxl7
	 jUYaBS+fyRhFxmtNYj6sdo0y1l44H55QhiUaYQuwSTNslaA+/xOvWBj2VGduQXD5We
	 pudpqtolGda1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F06CC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167372708745.1964.11032854097923050200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d631aaeb357a91f1c842943b5ef3c1e281a24f3adfc6a2a2e455355c42802f37
Date: Sat, 14 Jan 2023 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673727087
