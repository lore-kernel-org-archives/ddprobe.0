Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 340AC2F3D
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 17:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E017AC433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 17:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685295545;
	bh=rGyWecqQtTLQ3OXeue/LKAfnE6LiUeDKRu4GfqtgyDg=;
	h=To:Subject:From:Date:From;
	b=t9B73TTh2/l30YieoJLdK1elGaIO32Ror/B4MjJsZOJs7g/rRXSjhP1sUX4puj1Ur
	 VAq4/lyC3ZKgMqrh3j/EbVLr37eUrUufSel2aOxPGQmTkB9Pqe7txyJyhr2gaDcOmX
	 j25Yd7YP9Hn6qjiaHDK6IVZG5mEagCh+dg/I1Cv+6CnWveFJVxmmghoaHrxXha1ICc
	 SfH6QtAHYfXg1dke9zuHT8x/9k3fpWbiEbyG1DN/jxqKY4+zahke7OgQvL5Rb8LmzG
	 oV+hIZYcHIj4rN89tnr3Z0vBAl95Et070z72rXwou9T/4SLJwF1vtwnDrDR81wyaUm
	 /jpykl9YsEosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC21BC7EE29
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 17:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168529554576.30578.17862497459287649735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9d7ad1ed3ed2b34fc7ce7b021518d49de3e00bb2d157cb0db81b9cf725014a5
Date: Sun, 28 May 2023 17:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685295545
