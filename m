Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59338C8CA
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lH9OdVqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAF59C433C7
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696852028;
	bh=ZCFMiK0URIQQd0LT7Yb2FtGi9T2ZaO2+dOB1B/cNK9M=;
	h=To:Subject:From:Date:From;
	b=lH9OdVqk2s6Ii8Z7/yKJdJu+mPX6nYZ976eyxGg4BW6WyylDeqUR6Crdc5WkNYMuE
	 lUkMukxf2fFwNeQi4X58/LGTSLQGydG4j1CWfU5npAdwX9QpofZlwYaXqgsMYukANY
	 mLV41uxsVASvCTsGlZVO8VRNFq6wxHonkQ4ohnJ/GDAcTVsT8ip5Il2Va8hBuCyRel
	 j7gUfn4c1dxjroBAWM4rc0M0AJLUeCJ76vsISDfCkxSeQjU0x82UqsKgT+5jwDNlUz
	 IKxaT0aRRpk0vqKBHTw3Uortq89ypSVCEb+Pmn9MNdR4wdxiVFt6/GjeOLfbRKEQ30
	 LF5kahcg4hniQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAB9E95A8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 11:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169685202869.17356.1077077730853766371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 511eef5a2b371554b8a5322f16082c86335ebc48f4e52e2be886430e9a433216
Date: Mon, 09 Oct 2023 11:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696852028
