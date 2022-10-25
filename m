Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7393EDA
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A96DC433B5
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666702253;
	bh=yg7Ynah8q9foDmP+aui2MtD86UOTT9xAP+gl6B74rPo=;
	h=To:Subject:From:Date:From;
	b=sO0NPugOUyoYSGzYnFl3inKEbvCn9hDl9mClCEuhlBmVKpK6hdsL1jamt+9DsU62m
	 Nm9We50xTmkhuvdZxsUw3tiWhfRn06fj3y2QCAygYwI/QHMyJG/+QcQFnmdlFr7Zk+
	 2LHvP2X8RJbi/ID5MvtlNWpUWwLr14G7by0yOi4AHLzf7UzTvOCf2B0Ntjlz1lITl1
	 9KgDVq7vK8nUWjOvG7/LLKRAsL0W3WBI/GvJKaFSwGJlvlA/tiSEu0j1GViROI43LJ
	 6bX2yUwn9Y4eC9QPf2ZIA3n+zE2EHN9J5K7m77mHUB9o3ljaSh9Wjkns35JUl2QMLz
	 wRWRsPaKzJiXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 513EAC38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166670225332.8652.11850208587874868039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5b6c809467c0a399699cf7fe96e749872c53dd98833bf892f6e55cee858e8c1
Date: Tue, 25 Oct 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666702253
