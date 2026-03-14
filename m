Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1312D592C
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773509093; cv=none; b=Wt3P4DnOJ44EN2RUl+EA+JAJjeho7pQJbNbuL/dIs23qWJIRkU2EDSLvg6IWdpfK8tlmjj0na1MCoTnHDAD4FXAxmvaq6H+PCUbdmPGtLJaRdbl72jRwDefQ9xqrO/Ndwyd9ULUw0IPTvq0qAd4Uz77scItzl8stp16nSDRZ4oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773509093; c=relaxed/simple;
	bh=ZpmtfjPGAkBGuo7A9g4NEdGqCZ3aqXzWlaqkBERPfyc=;
	h=To:Subject:From:Message-Id:Date; b=eBsAuWNCd+23wB2R5lXXc5xCp5Ti0DPZJVzAPjGADlJr8qw9GK1N7z/8EUpLnMYGIzRqW8GJlqPfFVqw5PFUH/tfpvLLHeZXPdVNmhS3Etco2pJtHHifSNh1JI9kbzHwAByGpi0cBLWxBDfP+8UP4qPQKi2sL0l8i7oLkNT6UfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=reK70Kfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="reK70Kfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E13C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773509093;
	bh=ZpmtfjPGAkBGuo7A9g4NEdGqCZ3aqXzWlaqkBERPfyc=;
	h=To:Subject:From:Date:From;
	b=reK70KfxJc+v8WBLbgB06gmq080UEjn/ZkuOahlYK/thYAE9d86BpvWQ7lbiIHwLY
	 aBAI4L+qIo+41UlG9KbX3DriwcqcJR1Vc1dpaBgL++R+/2hPadzB0p1HBlr8wijyvO
	 Us+w46K+WVGE+ZkQiu77m0UrmR7q12z6yakZLjDvikOj9LG3r2Oy7iw+3pJEup2RPh
	 ALa0K8UKR3PFVufUFDWjjiZRbY5yWyBrcaVYVvUPvagTUMuhiby/dIw8br0q0wjNqY
	 VoXYIl8YIxJ5LZYiZbeB4+0C63RTlnotWKGyBb2f7D9q5Ig3GM3TKMGM4X1dSrYE6d
	 b2ULDYyvcjOng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9738F10706EB
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350909358.29822.11075651363096422422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4feb438444353cb605f4693f47d91b7f983cb7c57e984d02736e16fe2a4879
Date: Sat, 14 Mar 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773509093
