Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CA453A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 20:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD20C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 20:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677271505;
	bh=9C3t/TbgCs3H+ZDrac8z9/UGl0AhroDWG6CvveeUwIo=;
	h=To:Subject:From:Date:From;
	b=PlGL27xKOdW1+5Qn5rDyBtxfn+g27mrrgIljwXSL0hyXmD+2t/e575Q2U+9OBC2tW
	 0EYQ3zqHyQ2DuUvhSUFSa01l424gLGfBUb56Lub35o1mlF+zz4f0htZ44hQY1MXtL0
	 1+biUNXDHNvcXx2k3u6V4HqDp1aRkBfmdTcbGhsDDfklDBAGsla+sgt6Fe0VY+keXM
	 B3DYHW26xQtaNY6IVrhsWNwSFTLvbpHIowr1XQk16QuwWdhvP9aD9Ri91aJIYLlVIt
	 gm5v9AdXnK6GzufwCxhJfWTCf5Snrh+WC8RkXmiU9pdEK/fhD8v4fB63fU/i2BQ/hv
	 Q7aBGit59mOtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C10A0C64ED8
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 20:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167727150578.23651.11317886044870808093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09df72b875732909808b586dc93ab9cca05db001d415c1ed77980185fb7de27e
Date: Fri, 24 Feb 2023 20:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677271505
