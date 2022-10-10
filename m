Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B071C7E
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 00:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69755C433D6
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665362453;
	bh=H1KOCei3VjdaETOaMXzT9v29/nDzFZPleG6AI5qAnZk=;
	h=To:Subject:From:Date:From;
	b=q9NZbSTSO9braE6CJlUJcoJ8qF1EhN1FudKB2MRA2EqOZ2rLm3IVSM41hMWsLmUsP
	 jXfiOT37vo1NNxMDMPdvBGV0nYsk7ddFuJq2n6gN/vrnJNB0f1YkXjiuRCH6C4eVrE
	 V/mfAa+Bh1rZpfwJeDzEoul6DVvavSvTLvLMFAwihVCS45cczXkGrkQAoYRrE0uG+8
	 i23icvPAxF+m/WyJXBKfoxWOK9sheoVlwUkHQBO87iFcZZfL5BaAladywoCmhM21Dc
	 BJY7doWZJFo6sfH92p72k4LZ9Gf5dvVkKYkKRwuUaGW10gf60O16GtEutaUISHLoyd
	 JfOXIkFALUl2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E601C433FE
	for <ddprobe@lists.linux.dev>; Mon, 10 Oct 2022 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166536245331.18683.1808797314744986822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5effb945256b4d09b9c73f15c3d5c8406fcb80ddfb0ce0ae2f34f6b42a9eaf2
Date: Mon, 10 Oct 2022 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665362453
