Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1242112B7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fhH37VpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8891CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699700896;
	bh=/6b2YFes0oA2qWT9CrNLrhKJo9rSystrvfxL9cC6New=;
	h=To:Subject:From:Date:From;
	b=fhH37VpLaxPfU8zXrXnFbSfyh7bjFFz9jAn1K4rEVnd3ot9OobYTbD9ipa0ciV1f+
	 NWuF+hs+K1LFPh2p5LzmhlsjxGKkaHv3wSIYrUzIdpwaU+UUyrdUGpK/1ZqDHFgBGy
	 J782XRGoBveddIKlWdbVpoH2hsvYV+5fZkullut8q7UIDj7xQ9FmyFNMmi4LavUl0u
	 hXXKCjjQYbJeGxVmXIa8I5PiFW13GNdlqCXRnarEG1jdXB+s4QiKaBZPgwKhC1ImXv
	 bqr997L0mJ3f8LrHcubUQ2tsM7NnAQo3h3we7MWl3HG/2IAt/8nC+nQzhV6hw0B8M6
	 WcA3NX9f5/o3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CCCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169970089641.12346.1554287389088693533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841762ec19a78ec133aa816d5c157cad93b58363246600c4823af87c266d7a58
Date: Sat, 11 Nov 2023 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699700896
