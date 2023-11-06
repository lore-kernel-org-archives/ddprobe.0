Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D031DF51
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OeHHRG4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 887A0C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699262296;
	bh=np+E/cRQt8XNPNW5m0JNwMfAq2MeTRl//mDmhN/IB6w=;
	h=To:Subject:From:Date:From;
	b=OeHHRG4p10w3yNuL5Bd7SHi5964Obn/1aHjRU5vVQcB8epGdXw91HzLrzeGZ5eKwH
	 rQFq+WRqHV/5xeDTbjIjgVdgq1kHoC5Vk1Hi/c7VCYBnqLS0aqvaC18VVOXOGM3zLc
	 UDCxSgBNxjM+yhg7noe3HJ8I+iEJpHRIw9w3CYf6/CQN/Nqgx7JXWz25K9VR/ItNV/
	 FoqH3cKABbcZM87YP9JD3zFpd5/ky65FHjlGOla339OWiuWTJXh41AAPDHdclTPd2R
	 iJaPrqsknC6urL/heE7Upzpy5Iv+OIuZH/h+lNsO1VrzIFXkdVjbjVgwegrAuoQlVc
	 mmjb15VLyUIiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69599C4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169926229642.22177.5011784981474259562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2cfb7aa6dbd878e5196c139ec821012152538a807fe2fff403916b11e22a41
Date: Mon, 06 Nov 2023 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699262296
