Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0809A35CB87
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773890694; cv=none; b=rRmrHdUDS0NsPaTmOH75MsKgjNH2LmZnBGUx0jj8QRL4YG76wFWpi1Yenvv/s7Oja2G1I6qShVT2K5d4+0Td/yDFWxxptvx+4S5TVhTfTTo8vR47sejb5T3cpV1KVyHHH4yKpRVaHy82ZK97hALtWplvLX6upTy1A+TyyGVNVrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773890694; c=relaxed/simple;
	bh=ZBgJhxboaYfs3Hdm0DLBwBgFBb8TheQgFjG7iKC67vI=;
	h=To:Subject:From:Message-Id:Date; b=u5eI81B7lG8zzeeDIQCf7Uvj/4CWI7/fcmkzF6Ni1I/bEU8CtR9iOmD8qLuXHECOrC0mZQ7wv7livMV6GxzjTB06iTVX+qZ9NJql8jNk2Rlq9c9oQvdGgayRI+Zv4pM5TZ3lkxOsLdPluwDDSbGkQsDGc/IXrgxbw8cmVmVvR+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3NfPn9t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3NfPn9t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDB9C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773890693;
	bh=ZBgJhxboaYfs3Hdm0DLBwBgFBb8TheQgFjG7iKC67vI=;
	h=To:Subject:From:Date:From;
	b=Z3NfPn9tsJmbPTvn89FP5CxweNZUU3gWNjkF+TS0j0WJjf6XiuAsOpQA0l9JEnHQS
	 CdIAFI2FR1idg2ma2IdEdKJveKJ2Ii2yXAzoVGvpvzkTr3aPeKD7kJ5h0gicmT7646
	 puKZEYbeLFFAhsO/SptWu7o5JUcaHezQ5jWXQrjXLyQZs7lkvIhxkxx0BTzG7QS7mF
	 yTboADe7VKXKFYFxdFMZI0sEQw6WtbcawMxtEsSHSuvnrrkqNoLxayr5Bq7wSTiz7d
	 XiIUxkHgMCyYwDLtPSIS7J4Zc8oSiU4OjvA05KDwPYo/RKObvTdIw6hwDVlE2ci6uL
	 eEGnMERX1RmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9C61088E77
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389069363.20599.14015094198224095537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52dab2dacb07800644efb23588523a1acdd6b8a292b86a18173a6dc24528a07a
Date: Thu, 19 Mar 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773890693
