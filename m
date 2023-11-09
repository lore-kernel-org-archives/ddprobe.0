Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2427F38DE8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FM9PKdx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D62DC433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699565896;
	bh=OAF0r/7Y95X6WhDPSM/pEvBFUojJuL9sgCjRfFq04ig=;
	h=To:Subject:From:Date:From;
	b=FM9PKdx6aNgKqQQrgodyyrxa74ex/T3b/imlllGdYEnddMXbiybi3oVKCFELzC+1i
	 VNMdkUAbNkKf3VrB2dXFYhGTYvhIZKJ26BANhC2xdI3sPRIMquEoZgcTFP11DumIB/
	 4dalj1hNaUUwx0nCMJqu79Se8iylpPENSyGkTRdp+mgEsA3jEhK8EYgtPQ3AhfJZMX
	 R9s4bLV4xJnUtfnJwiZHuFlDlE/Liub3w/kMIdyD5vV22E+1BcEM+emr4o8fC5TZ4i
	 /AnBw9/0It0wf7a/+3XATJmGpP2s8YJJe6mrSdVXvO3eS72hKt3FOPaYYd7iUGPgbI
	 DULlFm2Z8A8IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 691F0C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169956589639.2594.13216465640128762390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7861375c33552dd38ecff36d3236fbdf13d2469474968c651c1c43bb8a85878
Date: Thu, 09 Nov 2023 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699565896
