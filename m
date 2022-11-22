Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26A07E
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8727FC433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669081254;
	bh=DFH0a0nvgyelxcKfozpSbIpv/7dFf7pS1va1+brLngc=;
	h=To:Subject:From:Date:From;
	b=CPAQQIsiKWQb1STqxw/3Qs/oqsmqFWCWbIF/AjXD9eScHfK3wfXdd0E2ao5zfQYJc
	 2unmDSlZ/aVLjwdkmJ3OMkd7Q20JC+eQcmT1UZXsUbxzkA9ixSGVO4dlcNLEd/9tIR
	 YpGFHljpOh3RIxGG8Ru95IRpG4r3QCLMZkHc2JyGzIzKjtua0QCI9fGkqOf80w8PtR
	 72eZY9ALoqh5k8WW0dPjuemyw0Qk5x43rCQ9+6Zkjjvmwd//Qg4OUZUNtOwyc41peD
	 7Nt9x2q8Sn49wK/aDjquiwadtDh42p0Z/1bKoQr6+9gVkcre5Dz0866ZJrBeCFJlDQ
	 wG9fK7PP+KQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60A95C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166908125437.16126.744490303454313549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4c09cd6951a4caad50b1959012d3ef2bc99236e8cabaad3ae71d9d8a5a16da
Date: Tue, 22 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669081254
