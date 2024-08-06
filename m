Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCDA4A0F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722922554; cv=none; b=OVM9dIXY/9TQiZhzKbZ0oSMuuXO4R0wKCqsc7KuBHF7Ggs4V9gzEsyy54ffqSVkTpbdJErH7XkzWdV222W5aA4pxULMdTxxjrjux0nq7xBZzS/7K0QWAI05ba7m2ssycNZEO+4uLmR9V/DsluTzHOTML592z43MFHw0YmXVbtDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722922554; c=relaxed/simple;
	bh=vz/xrO0jPhAfAgokFR+QPT1WLc8tIX1VA4aZHSyDMWQ=;
	h=To:Subject:From:Message-Id:Date; b=Z5JzXY8jNiTWenOlEIGdZGAcFx6nKVR8dCwLS/D3edrNJl+dw5ESCKVbLlWkppGgnF04ciy25Bo5y5RtIK1LglgDCyyRi4i3kbvgiKPMzhqEQG+Nb2GXRzrp5LRI5R5LY+5PvjtOgZ1rCEiUFhHG5Cxknl409yO/Wd0RZdrK+TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljuhaznE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljuhaznE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FD2C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722922553;
	bh=vz/xrO0jPhAfAgokFR+QPT1WLc8tIX1VA4aZHSyDMWQ=;
	h=To:Subject:From:Date:From;
	b=ljuhaznE9fO1eaW1FWBTf0wux5w9DodeB8TjajRa/iOS11S7LzDzJICTEtaSH5v2z
	 fPfOoi+7Gb2wkY3vs9o1jCP36bEhO3/4p++/9KyGV6FGrdWftrJdn9OHfRzA9vgr4j
	 hNgg2biWPZtPnvFAkVxBGa4ZrG5SK0s58HYi6gyAOJos+9hLIqsQgfrU/K+4wtIzVh
	 jxoJkD5F3pzEzQZNYrW4Qbslg7S6haPEuiZfIn4NFQfBp293t4yRs3f3e4e6IuhKla
	 flrYdLP4GpyRDbkFSUHtXBnhk/BLFQKciBlYAr6dX9gWf9r3RzUIv+l6A1rnMQpAt2
	 qCtjvpP2Ik8rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CD6C49EA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172292255362.9247.15274868394519857019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8cf4dec6746387695dcf7c86fd7c894bbc27f559f71320809a05ce69efad27
Date: Tue, 06 Aug 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722922553
