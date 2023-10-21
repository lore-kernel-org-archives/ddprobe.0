Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE7CD2F3
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MlGM+mp7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F236C433C7
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697879296;
	bh=Ofo+5lBpb+ROfROUJ7OTLu7qQAeC0j99LlGc9c+iyEc=;
	h=To:Subject:From:Date:From;
	b=MlGM+mp7jlmHi/ijpUXz8EDoPoidpZtQiRRYRJs/OvWngkrRytj0ZINl6spAXLQwt
	 9EN2vKOQNsNeHjOd1V16a5d4aR+U2Uyp297vosC17BpZF5hZB2apAFMYC3UlypNn9p
	 6BgIGVsfxsh5FBpUcdnqiMEPsn3vSS5nlyqZMizN/cJmNhM74nS98HV5fO0am27ac3
	 8dTbbX9T+66GDXHeQVzLg7nSFG1XDFmcXmrYwT/RzhvaneWLIcf0voY7z8CQ8imbOd
	 DXA0HcDu+QdIch2lBA24k6rYrx2LsAW7F4xitGadfAqNI1+Dh+/yZ65EFWntwEJRhr
	 7McXNx2DUFtfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EF25C0032E
	for <ddprobe@lists.linux.dev>; Sat, 21 Oct 2023 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169787929638.16151.12335043987380569186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ef32da575372f1451ef9e2c140196069afdffec8041322c69840cd36af0bea
Date: Sat, 21 Oct 2023 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697879296
