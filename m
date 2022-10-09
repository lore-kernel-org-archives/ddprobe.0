Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0B2D5C84
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AA6FC433D6
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665339653;
	bh=JI68Alrtgo7gutg2Dwc3M9f6J3fVTckMEe4hNuM75Us=;
	h=To:Subject:From:Date:From;
	b=EUX6ecCj+Y/MHKOpdQ22hXWKQmNUIBLh93lXrFeQaxiezPPiMcuE/fpKt/s/g8iXy
	 9Bgn+SET5RM2v4NYMihC+Aw0KjjPuelVWr/gv1HBcUjWQgWDMojhmJsId/4cFB6Ld3
	 MeGa8/tyF1tv/CwE3601PbmFsImGJINW99jruPgBUz6GpizPqZk49ZsYEPRSKx03RC
	 RZ43NbCnTv8HBVVRBlSKSGcayCwwwQTD7LyJsVr2uUniBhHXDM8BYjl3+QPh8jfExJ
	 eETFMKcltsSEgzTY1MTZpl9ROJ3j1XlJpiG9tjpEUGAFiUUqOZ/V+YJSOIejD/Mn85
	 fJAlE+kC5/n9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB3DC433FE
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166533965331.29421.2178577962290692502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8bc8120c461766db037b8c8d867037e6b14cc6aa5a1bc4c30c0efeff460c9f7
Date: Sun, 09 Oct 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665339653
