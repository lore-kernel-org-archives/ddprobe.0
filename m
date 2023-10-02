Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7078319BCF
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 14:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C6DC433C7
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 14:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696257968;
	bh=mBhe4N2GSJh4+hqb6jyF8a6YCWl5f4CP+zSZk/X8mmc=;
	h=To:Subject:From:Date:From;
	b=ffb5X6GqPtRT/Gt6LSV4dmjosgCNNnAbNqRHyLktOMI3CenYVBKEwJN/tSXIbPUvJ
	 0kPQ3AWL9Bs9M08XrBWGf1Hv+J2c5hsMtELucrAFDcE4MarpzGwBALdFn0n/nFkPF7
	 bW5BhBOp/N7qdJPSGVMzcKtvSdysqwVVBXYh2vO4Rwq1q6z4lzTS3XytZrkljr2ogL
	 fBg4JjJcgS0eJZjkvPTExUJXpE1vdsgPeqGFE4arWRBC0ZFMlRURVxscduzbRH7VI2
	 PTUM2231Fo+3iMzQdmZtEdAt+btDphXIHBV2qPU7r2ZwngH/GkV0FWe/m9wNlbFURL
	 VLsFKWlznNy9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF0E784B8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 14:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169625796869.14424.4544758028475776659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecb0d872d6ce239b0a4dfcc678b330238a667ba3fb58b7766c8e6866c7fc18f9
Date: Mon, 02 Oct 2023 14:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696257968
