Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2491E692AA
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/tsfGud"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84E01C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701796696;
	bh=4WyYZ5XQDBqk4LnaGBra0RkEoboQdakkksMU+7OugGE=;
	h=To:Subject:From:Date:From;
	b=m/tsfGudwnc79j9/G7fQPImhoLLIAm2cZD5HbyNKf6rJQ+jOcP/crwfsilHO3tZVz
	 4ldhRxZvrOuyCvsvgE5NUcwkRfOFNBp6OmRFRY/7OF/+FGBIV0FD8e2lZZrv3mEs9G
	 BgZAgkojM6JWLdMWJ5C/a5t92oaHNrw4UL5Lxx0fqzNEGs2ipb5uNfyZ7h88vwtVbB
	 2pbfbRieD3VbzaSYCyFZdso+i/f3eralPF8YhttsaJlRvsxvjV1fi2o+Gx5+XaG9qk
	 ibroar1Xx2VUrg55fl/q/BACl0ym2l57l3+BAW7qPoifdeo+EnpNFe+pvZUHV5fmXn
	 VTfqcsjN0GlAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6612CC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170179669640.17922.4742280546127621142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8a519ce2c3517436398242e8a6bcb0cc5cccd1c2b4c5cf62b2e0ed2ed8b35a9
Date: Tue, 05 Dec 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701796696
