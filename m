Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECB1D304
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 07:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EAZGEPmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F94FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 07:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698736096;
	bh=EZJsCXZOtUxr/xx3OXwiS8defb9CLTZ9CjQLItkH3Jw=;
	h=To:Subject:From:Date:From;
	b=EAZGEPmIhAzq/AQSXCj6taL7xx1P6miE49LRHjPDetrFCUtlcD6WJ47WLgmMCqSIH
	 aJ/8O1W9VqSmRnOuHgOiqQn1RtIRJc3K0efaRLXNbfDDpYMTjbfc50onwNeGn6oLsi
	 eew6gOfEsN9VKQMCDHUflD2Nc6JgMUWL9QgjajjEGPq3cpliA8Fy+r4x72iAQRHvPB
	 8DbnmG3csaJDYYv19gSRL0gS+XdTDiAa/SUXIQXSosxbS3NUJnt8od9oTmaBLHxZV6
	 W1H5+bGK/t+GHopmG20fQqvr2X7E8XOungM+pbrzAycyGio+d+3eQGjHNw9iHKDE9v
	 utKp6k2kAewug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF7DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 07:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169873609644.10350.9441676356421291657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45dd2c50401df690222b303cb1ec820ad036a3d40376a8a2888d1d1a2ada1e7f
Date: Tue, 31 Oct 2023 07:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698736096
