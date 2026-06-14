Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D606386453
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781452594; cv=none; b=WNlVDq3JoV/JECMVZV9c309bbyD6xfBdhSqT/TpOy7sSX0ubbfs7/W74NeAMCXi03x6yiQWeJP+bFJnUk3T1oF/VzNAabcBrD37PPjt4BuFIMeH69uGRqn/Tj6GfwVXYK48LbP7t+t2h0BK6RIMrxBg/ia7KG/h6AP9KTTrb9Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781452594; c=relaxed/simple;
	bh=+0w93DRelHKokQYKylr3rEMtx+6+N9ZKH5iLw+5g6ds=;
	h=To:Subject:From:Message-Id:Date; b=MvxsYZcxqg7u6xTZRicU79hwVrm7lP1KlBFSuLaFFuq+kyKeSLar4hFLc6aW9P0UlTpiqCv/Ft8c+FomMIkznDbGjhZl2jngmOFDb6vNavKIqDyWFfCkVlhkHPU9gwqThSgHhdEwLWYTLNzn24PUbBA6EQ5QrUQr+Oo2tGREcp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGWtVLsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGWtVLsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C205BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781452593;
	bh=+0w93DRelHKokQYKylr3rEMtx+6+N9ZKH5iLw+5g6ds=;
	h=To:Subject:From:Date:From;
	b=RGWtVLspX9PxS+U5Z4TKfkTYx6Rb7GoPBAVEgLuVFSY7S1BxHf5oiTGJPEzk6FSZu
	 zHjap3hPmgA2mncXF8XXzxsKUAi6wwJmV3kXPsbjfiOqHoFvqb4WSF9ay947TkRk2D
	 N7s01dGNf2tJNhREsZViPv9UzSD5Z/2pcTeAHkiqpw7x5NEDcT9wfOPpQeZdNbxSF7
	 KRF6bBjxr+XDEpEPh5HpNvsRFhP+j/TqMrki2WLuuRQUeo5iLnlI2D1JzqJ6JSzDfL
	 tsUEW4LE+JJpfuJ3kq8rN1WZkKtYynpQ8Cnzcf0gL1FxKGe4M5Bi1fUVI/PodMaRIN
	 froNKnDDyuTtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4DDCD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 15:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145259368.12322.14753281003201030563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b519d7ef1f388b2892d5e8243fc7f188bcccd1de48e144fa7c73cac222df117
Date: Sun, 14 Jun 2026 15:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781452593
