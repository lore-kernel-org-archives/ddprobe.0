Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A1A17FF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 07:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C107C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 07:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677311106;
	bh=cYjdujiGiuSX/FwZFfEyo0saNkj6XbsdylOia1877ik=;
	h=To:Subject:From:Date:From;
	b=WYClD57TAEi8xoxJiZH7sboE3w9RPFoueK32RsFay5Ka0SBlVFV7kwNPoTzsuCLXi
	 wFU99xZ3YJtPfeHME65nN27LgLGXRGF5mYmG3I3XWQtSyAIU3lkZTTXWz0ZHg2x5Ua
	 /QYVd7N7Q+wD1T6uQG/PDtiHStMkHV0HofV7rTAc/Gz+d6IOERmwM84FoSKw0pLjAJ
	 KcTOYVfe4Ev84ta5nare5EVSvmycJJZkpWi8pC/9g1OQVij8m8Z0guBoDoH1kScyEy
	 YYwhSaRCdwse339LlgW+LidPpWyst1qiZl3tF1SMgz4bt80brOw62lwVgXPAKXdKtU
	 td2M/ltoBsfEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAAC3C7EE23
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 07:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167731110583.16226.8621408752476080473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e9f9b7f806b6a26414eee3f342d045c8d1de9ccf53780ecd1f55dc799ed5514
Date: Sat, 25 Feb 2023 07:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677311105
