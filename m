Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C85F415AC
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F340C433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663915253;
	bh=u0Sylk9K+z9NyPkOkgIW6woDl63K3OycHeir9d66PMk=;
	h=To:Subject:From:Date:From;
	b=JGuH7Evx08BjACm4vGa3JpKpRWwkYc2yzDspumR8QnbqjBYYZgB5QadduxQcnKiVE
	 TKWKTl2dLgVmiTYPVc2N0+emL3VmhtzZXX3Yuqcq7f0y444m77DHqcnnssK6cmaH3z
	 yZrw4eV2VUshuzCaheVCIgPplYkLzD0d5+qwzxdXrkDviK1nJyPlA0LfdRB5m8jFbP
	 raJUvEFDmT6wUkO4Xbjtb3pQEmWO+6FTV6rPEHqjBgNzdbBV+flfIPnqPcKa4ETD82
	 v8rQppKs/0nPUitYwhDEUQtbHW3Fv4WoJGmsTOmAa37rmmD0cOMt+NibOQHUUIPnmb
	 3G5mZYM/x4xtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53377C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391525333.31287.8334641750556365508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de0f7203111a1d65d4dad252711f0c48cce9fc84f1991c3eef01cc69468b1ddf
Date: Fri, 23 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663915253
