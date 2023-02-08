Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4136A7F
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 02:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1DBC433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 02:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675825145;
	bh=VdAOsngE77z+GM51swhh6WlD0+QlO3455o5Ywea17cM=;
	h=To:Subject:From:Date:From;
	b=rtReLKzPuhaaMBjWOcL5ht1soIqtt/i0wdfYpRV/8gJW0a7BBTwHFspuzANDguYUg
	 GRfHYFuC0jZdB1grDM6JjNFfVodV3G5q3A6bUFt0QLOlfPuyT8kMddV6UGPrlzULpl
	 HEsmTui0jXiSye8JxvNtVnkBfGjMcak9B90UTP922jTwDKS/MpnK7Cozgqko5flDNg
	 z99RE/4IifUiebPXaBJkILWBiGl0TrUD3M34RNbx4tJBiK16OR9+L09lsjuPA8oo0I
	 8IUmgqo/fTmgJyBsORQKTalSGXQc64Y/eXEdb4SQmdAgYxl41PY/ygabW1L2MhGhap
	 XgHjEf5zmfFeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB954C636CD
	for <ddprobe@lists.linux.dev>; Wed,  8 Feb 2023 02:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167582514575.2819.2351867505283926619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35e72e0799737e75797e8986f951361c9019a532f7a7fc2a13a7d2d82671576a
Date: Wed, 08 Feb 2023 02:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675825145
