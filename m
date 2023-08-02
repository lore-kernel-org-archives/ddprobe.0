Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D406D30B
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 16:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D107EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 16:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690993328;
	bh=OHncMKXaPffBqspVedZTPa7WSv1CYDmHTAJIRCiXrlk=;
	h=To:Subject:From:Date:From;
	b=hVRm3ZGHTFlJbIvr6hAvwc7j9s9waFQx/446uQ3I9Xo82gd5UbyI2n0cVZEw+lpLC
	 SbdWwiOYmvBySWrd6jFBTbzHNkNvhzKPBMWQto1s2rBbKZQjPFmxTf3egLWoi1InvK
	 82kGj/d0dOFSHwfSNn3Ez2BXrjR2tzTF8ugoP/Y0Cf2TpfLpX7T/bMOU8nM1i1/D2B
	 LECUJu+3EUfo/YzH0aBa2Pt/CG3kAhkz8i+EgAtiGVUiD05hKkm/a90DcjpjLonvMx
	 9uzU9hkWlvHKBr3vUHX9Wf904ef43EDgPmYwlvuVruuCY71ithzRMcrZxbviyYVM9N
	 5+lbQJBOPgeEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BCCC001DF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 16:22:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169099332873.6810.461946511948001047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db5984b7ff256aee839e606a5f14f70bdbc9497fa7e891affbe2690e16cee8b
Date: Wed, 02 Aug 2023 16:22:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690993328
