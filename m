Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F8656AAD
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DWFDr32H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81107C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703760496;
	bh=PV/zknwI3Cd1S7VnZwkvRzsf/UE49U1fiYMptF77S3I=;
	h=To:Subject:From:Date:From;
	b=DWFDr32Hg8OeBY53up5+StXezHTwwZoqTMPxudf3iuwZOnMaoK7rOysxuUCcf+G3I
	 c1WHshzWmjMJLJCtE1/8d8YmC6SoFDkNJQwN+WilNld4okKxEi8nB4uxEpy479jVNE
	 uLnasAyQU6qqBw/4bzOrnDsSLsicuCmEczV0rg8d0FoRpd7PEbjeDl0i/G7gaAhXcP
	 LBWyTeH+K5S6VB6sDajdhrpjDkgtlCBLyLFe4wxH+YcJCo9OeyZSmIik8xUjJGD73t
	 AH+31KhZn5b36obxffkOIojRoO1+8SX7QinsJU9c7Zi1lkL/mEsiTJ8/URUiZb7ZEV
	 RKJhe6dtEDEeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BFCC3DA6E
	for <ddprobe@lists.linux.dev>; Thu, 28 Dec 2023 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170376049638.6802.10691035341285662732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72fb1bbdf6a52fe711c1a47e32da4a3718d29f382f064b2991e903687d8632c
Date: Thu, 28 Dec 2023 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703760496
