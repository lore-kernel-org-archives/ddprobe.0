Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8487EA8
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1F84FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686526986;
	bh=DiL5eoWRr5qdS5RR0yffQ6c6LC+0RempJMkoEgIVI+k=;
	h=To:Subject:From:Date:From;
	b=Q7eLyDB5XYY70C4SxbdhpKkNVdVp9kNGnXgodv7wn0y9o9VVaCjxfDRUrkKkzLcoA
	 X5+1MEO4S0zoTzv/S1IDX3S4DuBnGhfSvQV0wPfnlcRADDmew+JbYMK88ha8RbAZCI
	 nAMxmT/Ee7i3GZDiIqAYkNCDslLt2P4gNW4KxGomtx17Ftr1/pN4pKbZPCTGS5YfyY
	 Hde+GgFYilDBx0dYpzW+WRHWp5Gsjm0+bgqULwEZusAt2q39D/ZXz+oIEcx+B+az46
	 Ir8GFyAqomZLR44tMy1jb5nGVMtAUWRTc0FRCof3yhCfpDmfGQAORQxL8W6fh8KQ+T
	 2FDFh2oBmf4Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EADC3C77B7A
	for <ddprobe@lists.linux.dev>; Sun, 11 Jun 2023 23:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168652698589.9829.7006232109200108710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40a05515e2556c7b0bd7027e4cf864b4366ca5e2f0e6a2ef3dbfb415d95e3494
Date: Sun, 11 Jun 2023 23:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686526985
