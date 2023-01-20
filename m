Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294C517CB
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF84EC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674198725;
	bh=Wv+tNUi1Apnymr66xRTAsMnzPyb+kmLrdLtxzWtk8l0=;
	h=To:Subject:From:Date:From;
	b=C3wDs0k52sMyaopQbwiB0tSamaBVdnW+iewkFOQuj0CzEOVfsYcDG3lFmCQ0jDNwz
	 Z5KQ8JZP1s6guZ/jcujGBVunoarGWMT4VgNI6Rbdn0VGdYvtNWOCmnMuQ0a7Aor5MN
	 9T4El7okdeQ6tCiQAxrPXgtAEu/dKJyMoFbLAmYioRDrMPCY4/1NY1PR20Nj2Jp0mY
	 GsUNLRmuJBZx0PC4Bc0c206vTRiZw099V2WXKnSUA6OWl5jzg8pZBfC79/xCrFtrS6
	 7S2ARYRtSPBGQRjeLEK5yDkoa3/CZS5Azn9UdQ+NGxHCXqwhNkMyzRazjjV2nFYTJg
	 9p/SANnkHgFOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B676AC25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419872573.18031.2989605654536370957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495ba52a6e3201098b3fcd23e733c4134fb20a645620513f2a6030b50e54050a
Date: Fri, 20 Jan 2023 07:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674198725
