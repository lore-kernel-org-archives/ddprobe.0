Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409E92E62B3
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781156794; cv=none; b=bURX/U+JLfpjCgDzBpkDqDaF6HLBJ/A1Hk/qsjOgmQv5Hm7nrEb5N9vqrZxxzKMIwCM3K6OQqge9LwP7QdI/CpRR7Hasqn4tYmJPzhXucz7r3VxFztohjM3W+nOEHDXleWUaZ+YFaBOwqwa1DTvnBeX5bJTHhH4NnAEQPa2Nu7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781156794; c=relaxed/simple;
	bh=ki+cUKFoke2Rac+kozUC3gYwogZVdPTsz3IU08xaVhQ=;
	h=To:Subject:From:Message-Id:Date; b=jXvogZCh2YE9c023yOQ2OVFwC9+6L26t0z2/Q9h+TO+fzf7Le1jVFX7SAgglGfxZTbHiSKtUykOKcCE6UAeCO/jqIpaQ2xOUF2Lw0Lr05oiVk9H31/s0Z6q+aDbPQUKto5F3cgL1IIHhoOLnFTADIscmXCb2hSMXRy0Fe92/aB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9HvN/T4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9HvN/T4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C86B9C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781156793;
	bh=ki+cUKFoke2Rac+kozUC3gYwogZVdPTsz3IU08xaVhQ=;
	h=To:Subject:From:Date:From;
	b=L9HvN/T4b6Z8LWcZ/KXOGlX3VszboWJ5dkbfZAWiYzUgSmItiByD7DWYKehHELAPb
	 pYuB25vIbIVofEIjio01NdAulvUbrsU0TAA8LlAhtGnBmr8xtZb/2Lk9heTw98v1Wp
	 LJIYmBGsu0vgwnMOlhXqAKAWkGEW+8I0uvikzOd7SPaP7YbsuwrqqclEMbRtsbTSTg
	 Kt7lG2rINHihXErHmPF037JU2ujl9FqaycBOtbn5XpmEP7LG8cjNHNMp+7P3oglZfn
	 WXx2QEDvSK80e/S7YN6uo+7jc3aeouhKB+wan/MpoYq+LNovNUA2X26uQUPhq7Ip3F
	 2TaV7YFeS0ugg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF506CD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 05:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178115679370.14897.17841349906643079391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b292a55363afc077b318bccdd03fc6590786a68ea33347f6e82f9dd0d21e950
Date: Thu, 11 Jun 2026 05:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781156793
