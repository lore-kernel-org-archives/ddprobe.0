Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32741A3164
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761493193; cv=none; b=cUioJgyy//LEw+icMkKpkzFlerKll+htdii8mVs7TelPtLbra90c4cQI5Px4+W4cse6UCPBE744Q/IEPgwxZBvBtdmXssIuFGUQ7jho2uVi5TvG5fWOTpxCTicJX1drdgXOR2PjxssStwSZtsPLgP+Ww+0U+AVOsl1ZUYQHjCKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761493193; c=relaxed/simple;
	bh=EkUW0rcNqlyJxHCdWKHYUJHrlD2yO5W8cK5evy+dGoo=;
	h=To:Subject:From:Message-Id:Date; b=J1DgacMNEduZ0bpmmC/7htqDjjwn59Xqfo7WuICM86bqumZkSA8MNLKgYXO3KQns1BVGUJlZQf7bS7Gj3MLbsqeBHGdvRt4XYFeThfad/RQ8/YTkgRR02y+QPfOPoPlOUYnzqvXsq+NIbZfC5KsUDtpPFVB1HX9ECHQfX0l6DnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xz7G2pEj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xz7G2pEj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA87C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761493193;
	bh=EkUW0rcNqlyJxHCdWKHYUJHrlD2yO5W8cK5evy+dGoo=;
	h=To:Subject:From:Date:From;
	b=Xz7G2pEjqYVlcGL4VYhUuZHXtIT9AyaQFPSNxb6h5LdLmpyf3do810VrnXEC+Zg06
	 BwDft7MkFWK28N4Ie+CkU8ipresGR99C3+rciKTTu4dICiww6VolKoqqC05Ks0lk1A
	 LIcmQvHS3uSPUIKOJfD1lQvtUW7mOI3WpSI9D3fBDczp0lAojmxy5UNpJQUm30YmSD
	 Mo5mNASS371Jda4KFiTuDyYy5RYwGfFTQWUkHrl8ibi3S35cciQzVH5i9TgVo+Ijpc
	 yUUUFH19amwcJ+6yKVRzghNiH7sGh+sgcqD1CV+ZeGBN+N63AiU2GqunsHhi3hzpws
	 9mfmN5Fb9vh8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9052ACCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149319358.21950.12632604022272197858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48c981ffab222e6c5fc38f8e81ef9f05b091086eee860177a32423013f8a3bd
Date: Sun, 26 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761493193
