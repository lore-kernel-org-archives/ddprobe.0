Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F27A30AABE
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785016834; cv=none; b=aIObwYKXzvAUuwyGO1FlpVtf9q9rO6HmaXukVKf/ODSEZAtuFQszXaARsVNtrzGWI5b3d5gWu+g/zHOzC6E8jwd06WZCNo+IYgdYN/MkENjSD5S8AevJYvDZXZqNwl0Cx44nxHBZS8FZzK1DSkJ9HDTP2mwtJSiG752D8rZ2bAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785016834; c=relaxed/simple;
	bh=tXTTNMkUVWNkMJMbK4I9QqHO+/YchsEBmNsrSVyQqx8=;
	h=To:Subject:From:Message-Id:Date; b=dZsTLUWh95FNWGGH6Ti8Jrn3/CrbdLDmB25X6I7A3TWx9lUkMADcEtWnwIIPzvSK+7DKuzEyoEirRvcKRD1jJbCHfO4iMYuI88RixUFvFLLdTStEp2kgfIWBpbCnbCV0TxR9R2REIFFNNMJl7MySL4dMyzJArkq0BLlNimes3gA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjGl54ql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjGl54ql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1703C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785016833;
	bh=tXTTNMkUVWNkMJMbK4I9QqHO+/YchsEBmNsrSVyQqx8=;
	h=To:Subject:From:Date:From;
	b=LjGl54qldysyaNgi4T/ZBbQKkE/kkexC4BEiXY8AgmfAhE94sIDH6gVJ4Tw2BbyYN
	 hmzFmZOM6TiCONHS5HRF51YFQC7/GrgG3ygTxDLB2+0HeJ1ql01lfmPLCOo+p7DMlk
	 64QlU0IEkKPNSvlj8XtjcZMX0cQQra/ByjH4JdpqH2/NULV+hOEWITAcmsPmR66wBB
	 7xDK29n6ZdWY50wKixMSfZMBKNdrZGxn6UEHyPI7hmfrDHh1ynaF8D0FlLM/QHv1ml
	 Q1Eo22pfY8bk6buY5xceiW7XaKc0pMZNYjKFb835al7UFp8pCrE4mfu1TXYS8+53vP
	 FK67HHfsoamVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF4EC531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178501683368.30830.6417748903240569493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37767344d657e506ad08532a6da6cfbea496684e41154755bfd060fc0c914588
Date: Sat, 25 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785016833
