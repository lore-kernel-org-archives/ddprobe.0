Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23EC23AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2D2C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671696087;
	bh=L61xV9xe6UoSwGeQnTUvo0H/5mitxROqrNrKGxXdF7g=;
	h=To:Subject:From:Date:From;
	b=d5FvYyTn+PPHO5IFlAf9fzT9lBgkfoJ95K55sCdF48eabkkig77c/veB5tkK3AqPv
	 PrOZWeGFxTeJe/bp+Wvs0/GgWd+U/m12urLbpUrVtq7EVdWIz8rR+Hm86eYNzHnrrw
	 1PB3L5RkNdWVj3+BXPTa6Y8gIO+1ME4jUubdzu78VVCfJTfSF8PRPB0e/mOs6uhIs7
	 RwcgndBo36G64MhsntbUBkte8ezidUvQgOmwCLSrN1K/bOAfUO+h52W9lb9EM4SRNh
	 x0of3A/CN2MDXGk5ozdGQFHSZd1JeuR/j96vZWUTo1oIEJ//0QLc1amdZjXWtJFRoT
	 nwv0vxibP6E6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61404C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169608739.30959.18098730668578770076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9b146366b301c587dde25a1c411de26fe58f77ba98b1e6f9342fc759965455
Date: Thu, 22 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671696087
