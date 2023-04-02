Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42264360
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EACFDC433D2
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680438906;
	bh=9/UvInWY/VAbgjwM/lRcgCk8eaLdCdfpYTcduTKBp7s=;
	h=To:Subject:From:Date:From;
	b=Uh6o0eai1yAO/zMuFFCneY4kAgD7+9VT5sahrZHsIMtuuBIbtzI8zjVKpqxFC0VTa
	 iztuT88AL0RiJr7P2qPoC1Nip3QMvbvnCHNps6rmyei7Tf6ERnzGZqyhs6FmpyfMKE
	 p9g6QB/uddy+/Sr+aaI/O7jDDlpkcfOW5XnJWN/loIHRAvpfTBQXRs+AmnyoD+LXwo
	 QKOKL2/r/thQw+41vbvtCLei+D8J6mBHiDwiguRPAtv+wH6eyQ7b1/R1RSDBKfGXqk
	 hQKCe95CxRimWJvb1oZ0/rUsjS+c3NIhvQ7MCQXtrfXKe+R1STv+rmNAao05KiYXiB
	 SaQGKys6m3JwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0FAC76196
	for <ddprobe@lists.linux.dev>; Sun,  2 Apr 2023 12:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168043890581.11841.8193591106033953041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf291de31df6eea182aee73ab764fcf793ae3c82df03cbeb5bc3c0986e29dc4
Date: Sun, 02 Apr 2023 12:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680438905
