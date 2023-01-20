Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0DF198
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8CB7DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674184887;
	bh=MZW9JB9LWVTXYYvcSJJwlVl0m075Yttytn8IxicuT64=;
	h=To:Subject:From:Date:From;
	b=BLWg0Qfrb7T4yvQ3pjW/s6rUEwqdT41DgkOf7oZpJPLPLigFPqMQR2qLiGHuL+yQE
	 Bw8kuowXy73fsHmX/CWxFsLMH1RSzIYjeVk+uyRnHs8xbLPPQjCc/VzzmvlsDC57fx
	 OVaa7KYGCZaw1dGooqwkt/NYoCYResUW4vy12imMi07TYjcH11tdrFoBLwvJHbIYEG
	 WTdy+grSVS6p6+ohBfKTdTG4o4WT2XfVwhrUaVT5QOgT1Q5nWqgftjKZZi3aAYJNb5
	 8gRQEp4Kp4KZ8rBEywQuG2fIA1RdfHskXhTSbyPREfGwKoxXra+ZmfBPW0sJnMrwbq
	 xp8EfoPI94TOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F325C38142
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167418488744.5717.6394707680067024575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c89a032b7ad64d77066aee29fbaab75a4ff10144f87a715222866366b27989cb
Date: Fri, 20 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674184887
