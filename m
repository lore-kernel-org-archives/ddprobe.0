Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420B61CD215
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736007354; cv=none; b=iAlhk6Ru4N9hl/A5QoAgp/mex73ga+g+/V5zLAS4DjmubE+YOF17OhuK9Tv98IVFNRBeFkO9ukDF8BkRu9kKfybNmYzT6GhjIDiZ304lB+TQQMnbJPXMO5W7XpvvGPOj6tbCPPzbZ6iIZas0mZBj9apECxBFXHvHXoWzP6kyDCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736007354; c=relaxed/simple;
	bh=Bh1Z2QTWilfklz8xDTPDK+DifYr2klE4O3eQNUoGSIc=;
	h=To:Subject:From:Message-Id:Date; b=QOIyJtb+xWso0Qz3m83b8Eh88cI52BN+GFmi/p/3mwE/uATdUAmKTPerwF1FH0CprG0AT0C1LFmrkG+Yq2YD7qr8pe6NtlmcFzfpWYllRJSe+m/8KHf7UZ9aK/2wI+P6YSp8hg3hkBDIsMvv8hmXmGkRuQQrzIs8p9otH6VzEvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRUqTo6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRUqTo6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01EAC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736007353;
	bh=Bh1Z2QTWilfklz8xDTPDK+DifYr2klE4O3eQNUoGSIc=;
	h=To:Subject:From:Date:From;
	b=lRUqTo6SA2AXhXRcsm0Hv1ZfBn/mv+nYNF9yXPPBsQ4yALikMvy7ChVu6axHhSQbb
	 Hu2XniJ2TaOizk/RDMXlP/2b6mmv8inxqpEKshUsfKQHtyiKshtQwb2Er1mHd/E4KB
	 WuMjfY1ZTYMZUSNMjYgVt3sDlnTTiMkzLyF0ABsi6zzG0VXjc3OFVvcREXWiAxIPcW
	 MXGPrNIywcwFjOILFGksKN3dQJvI5FiwNMW17Jig3pSuBJHhnrQJUIX3TOGLdEThf6
	 UE7DvKWtrcXzNRhy4KInxvTy+repkIsR2kBMLarcECFiS+0/OWwSVs8cA3RhZIQaVK
	 zS/ScIvudYk2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BFE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600735358.19466.12470482290217458322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70cd9525e4d38147b068287660ecfe7c97f313d1cfd29222a6792ff243224043
Date: Sat, 04 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736007353
