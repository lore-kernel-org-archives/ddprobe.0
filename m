Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F156D4426
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TC+dWdov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7623FC433C7
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702195696;
	bh=86S2FGX23LXsYhehsJD81y9wiuNcp/CX8XJu3FRYtxQ=;
	h=To:Subject:From:Date:From;
	b=TC+dWdovk68NJAKnovwVrRs7IZOo2dtZ6boABpLBwPaVBXFHUbZHSWBJbU6Mwx82+
	 sKYqxZtf1Ny9LgzjIbyFE0TdCucghL9J9Jr68LY1lmUzBL3sA+Y2xMxqk8I8ceEUpd
	 fd2udtDwXIQsYXv9LDLoqAUJcDPAKvdg7JjI6EDPG0wPeXszwtwmDq3uPUQDQl+aXf
	 d6xatRyqnGcJpqVyaB7UgFreHvaytFPT1WwhhfdmQA4H2EQe5kM8KqZUZt3sDHkkvS
	 j1NlG4cDsCArMzkv9eYguG3tEbXRaweYlEWfHjdHh1oF7nFMnNIhMQwM0WAtVfp8j2
	 wlqxaZOhkgxzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EEA0C4167B
	for <ddprobe@lists.linux.dev>; Sun, 10 Dec 2023 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170219569637.31772.3307650764053684134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d1f220551de065d3ee5b8bca97131f1649ae947187f944460b5d897ec78b87
Date: Sun, 10 Dec 2023 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702195696
