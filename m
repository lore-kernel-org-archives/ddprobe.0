Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B70820FF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:41:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5E2C433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673433687;
	bh=ZMOvpEDp96zNe85HBsA6khmqHmgTUH+ropOqaooqruA=;
	h=To:Subject:From:Date:From;
	b=bmo9NFYel0LA+GeZ03Z3Pbb1Bj8gtlU1nTJuvhBJLiOoN5dNeF6IBk/BhpDzSNwOZ
	 0JCefF3cUgoeow+iUxqaTQPmh7cxGquR6691VH3SP2hBVl7sEqwSJXORBdOTtaxLc9
	 v9GAbnsRrnnPRM1a5q6rWvE/qPbP0vl6cOq8cT0s4gPZAq63Kmap7jNGaVeY4CSbFZ
	 PEnUFOZttoRnpd6vhAbZYp5+m9hOK7UUWz9FFHNTezQlwgr5qmgZzG3BZzwtFvup7N
	 XzLQL/mIrtNO4DxwxIoYAxjkEdkuav7hAWumyuV0Ygnuzl1sM0TFsVIFBneRJrcuXM
	 9yj42o2SEPCfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9399C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167343368773.28496.6609717030853077513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a27a09fe11d04a221dc77c79c1975d0119286b14b55128bcf3dc4614fd07941
Date: Wed, 11 Jan 2023 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673433687
