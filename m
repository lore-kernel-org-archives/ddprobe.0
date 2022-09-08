Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0D2E7C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 695BFC433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662624053;
	bh=i+tqoYQFEb5t+67V5vnh/z8eu1jwS39pfOWTxDra6SU=;
	h=To:Subject:From:Date:From;
	b=QwiuBr54uEubag83YtOOSb4Exi3ScSpT9T7q4RGSyOCUYuXxLnN9EFCFm49ycFWj2
	 WBRdaoSDRZ3sD9hbt3f29cX8gk8sCcS13+3KlcaVSEiv1lMmnHE8Dc7n83HGY8yXeA
	 d6ujaybWvdsKXWwP5x4d2sfsa8f8ypk2e/0rFHx2lPrKC+BY7rrtqg3nvRP82t+3iS
	 Tr2f+5n48y3H2LY44eErWvKZ8Fn1n1aTshyT+Y0vjfZao+Mn4kW1EqW6LK+Ls4i7ak
	 T1nB8N/Y7x3ZioGuDgh3dyvdre+5O34A8EU9zz/ptvYVlKS9DgwBW9v8uEfxtydpId
	 ZDRQaDtBbDt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50EFAC38145
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 08:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166262405332.11857.862548868944650403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a747ace145250e72e844343c703b16dc580dff2ea573aa281613ccd1d50678
Date: Thu, 08 Sep 2022 08:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662624053
