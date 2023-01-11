Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA74B17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8512DC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673424687;
	bh=QdC8CmWnYSYp07akxzrrvJfRFS4Nqfh/2GeEXZJ6BPs=;
	h=To:Subject:From:Date:From;
	b=hUV4XQfzCU53dzS/VhrdaDqjgCFljToTua3QXUnVMSSF9pDQZ/bzADTLEn8nHndXh
	 mSllhlhW4INtkSiQQfx9xkO8lu+AyvQ0uagC1cQXEBPECflPSJFnsui6i92pubdYGM
	 o2EUoi22GYgsEWAprSQypB4UJ4ItJeizwNp7bF0GqhyjKEYCdQir/4uVzRuYTm2xZm
	 7uU76gVQDRhtEJbrxv2zfxuMXQ04azQluNUXdQZt7sxCuDuLL13AldOKsfy3RwNVX0
	 8aTr+uJ46NWUSVdNVo9B0tz8mgP6Ia8abHdZFzBGCEqSjgPvDbWLcDvBNUjLhANpYC
	 /L0GYuFXFVBIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6751BC46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167342468741.13714.8322020015618233242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ad5aa0baa12e0c52dd122e7cd680c7a2a0e1865884ab1188ba361e52e0c7a9
Date: Wed, 11 Jan 2023 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673424687
