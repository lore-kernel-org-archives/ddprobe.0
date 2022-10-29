Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44C823C0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 12:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 712B9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 12:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667045454;
	bh=HH4oSHisnX5P5ZEn9+6r+fq0WSmdYsjAD8jyF5V5X4o=;
	h=To:Subject:From:Date:From;
	b=H/gOrxRNiaKnYXh9sGYpUddmVn9MlfzNZ+o/BTw12KV+utW3egfFG4iSRvBOFNJoV
	 r6yU9cFyAbCyFCKSgXipVcEmjFfVddUeBA4xxG9uDgCPLLp5/tHOyThuMYeS9shZoG
	 CBlWmHfu5NayET921/Kr/3Q3c3NFMflC7Ftquq/I5QoIH3/J7pieg0WfDe32VgJWL3
	 H7DmudSdX3qbEPv9nTHa0y+nahQdIb/x35bznBlb2L3nTkfPzeyzvjhzfp1p9t6gHi
	 cDulcIECGceS6EvEmuyQiA//LNTFJ8ZqD0qcldUqRJxQcHV6MdBSxai6StDktint2N
	 zOGMhgdnLI+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52578C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 12:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704545432.18242.2845914621916282852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff593726a8a95a9e842c37865cfe1f3a934dd6fd35716bd310983daf83a2e937
Date: Sat, 29 Oct 2022 12:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667045454
