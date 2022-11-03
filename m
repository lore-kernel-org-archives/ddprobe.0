Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70137470
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88325C433C1
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667484654;
	bh=wJ90FD6rtGCC60ZsM3zpaEysoIVXp2IDM47HUTW5Src=;
	h=To:Subject:From:Date:From;
	b=OQA1LErGxLWeldWuhiZxR3HtxEG2bUR1MLubtKweIINh7yjanSg/fCX3AZbe3gGfI
	 Gw0F1O8BHS2Pf5BuMgTXDFio6x852QYQu2TCwpRVa0viNcD5j/KIKLk7PQq3+OO+1r
	 DD+kOI2sc5EE8CoPkzsHy1BlF66PtvQup8YfVn6zZgvdA6/7oTcaZx0qWaUv1QC7Z2
	 Cc4Ed4ciiczZFDqmUJ3KM6R7huFoxUAgaGNmlS8XF5Cbw0orVT6JYirnwTgzqDv1Bq
	 zjoZiUqlEOpFsQiWQ56yrO9hyKf4f2myY4AXsIS0xKxPa/J0I+EyClbLJXE1hNZa3g
	 qgoaiSC4j2kcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69C26C4332F
	for <ddprobe@lists.linux.dev>; Thu,  3 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166748465441.9964.11132529141837844447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a810e30f242461a90da531d10218b0e332069ce9d401497065a8293d9acdef0
Date: Thu, 03 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667484654
