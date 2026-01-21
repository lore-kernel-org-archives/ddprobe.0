Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3AF2C026F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768985634; cv=none; b=IJwLBZXSOMfCID6VlC/Wlt9DiwsGL60TSFEZq781fAl5N+OQSbrTiD9eD2qwVexP8wTE6PVDdnDHdfz7B8ATIGd3I0yUu4RKpBfFmR8fmTNiXkG3UmZ4pxxpN+EG58MQF1Z9cWiGZ5nZcImufmg17/WNeGGasIM1NxU5P0SRhz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768985634; c=relaxed/simple;
	bh=xWq2Jpf9M1p+hG9rYsrJK7Ori1UYDI6n8FBRXSTj3T4=;
	h=To:Subject:From:Message-Id:Date; b=AHy2ZKsN3eS0p2WyGk/ILIJSioKbt+xI8rZHfB72BYxrIy3m8jXVNMm/Bo2bgPXlN61Kwi/Ha6SWzcRYqSNiCeRTcaZZ7gJSuDo3FP5WnhswhsGOBKb6V+q7hQI12nyj0Iy7aFPcTYheqRHesPlz895Ggn7Tbnfe3PFzK0M2xAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nk5ble7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nk5ble7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF33C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768985633;
	bh=xWq2Jpf9M1p+hG9rYsrJK7Ori1UYDI6n8FBRXSTj3T4=;
	h=To:Subject:From:Date:From;
	b=nk5ble7gMtusg93oXuVP4qforF8BVw/0Cu9ItkkNjd+smhElO3MNb1BqMDTDmmxxB
	 smMRqc0X3+Yiqm/QExBnciSfvhncprm01AfcyvcQt8xDhbztLkD7uD1mDPGj1sT1QD
	 knIhzCOcOzYCiTrpLy4VBmoNiJeX0O6gURP6uNT/Qi6ZqNxpGJkfIQIS6jZfBzowNS
	 /ESXi8eIOP6gR7gsDt7AMKHtxziG8PnD4hb8mwU77CvfvC7E/lqf2prMGIRxgu+Amg
	 xGuz3m9Keyxd7YgMMEw3ArTgeOgFrJSxVnMrdEwk/PbFU3vtawOCg+5kdPdk8OzzxY
	 Jq8WSoyIY9duQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90175C44501
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898563358.30296.294388744386051709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7301b6ff22427e48b5c5f82bd6c820bb919fd5890658e156e31fbb0ad49302ec
Date: Wed, 21 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768985633
