Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD20243387
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760803794; cv=none; b=u9VBwllGVfKk0bhW7R4f/XqKvONSb+El02YmYqEeav/nx3Zl8pPTg/BhGfsMu3dT3slJsAk/2RlQXD8bMRLe+llxCV+NYxTmHakc5jCC67kw4xIwxOztQ9rpr9U/RocISMdnC3MJ2xhY9DXXBYGhtQBFsjFz1/c9gF4DRks1+FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760803794; c=relaxed/simple;
	bh=zy17I+bMORwfyJzIQe+T2ooq8rHdj3NKoC3p0KX0yZE=;
	h=To:Subject:From:Message-Id:Date; b=g9ZCL/nQ3+77ac43DN1pSrRNOQZo6wxOqH3epBLFRho6cLLXy+tAxCjiDVWogxDao3kdEAxTv+0ZO2mglI8PEjsTHCTb9+kQp1wvS35nzD04VlOd89CIR6GhfKsrPNXO1k6cxRnreFadSTLTnWEi7gFMGyH6Pp7Lm3RNvKl1s88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lD+5/iFN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lD+5/iFN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57DCC4CEF9
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760803793;
	bh=zy17I+bMORwfyJzIQe+T2ooq8rHdj3NKoC3p0KX0yZE=;
	h=To:Subject:From:Date:From;
	b=lD+5/iFN+D709ukHPUwbFYvPOn9m4VWQ+qeWE1+LK+UJlGMif5oR3MRhZ2Lx6I6Sp
	 0x4h067w7FkukuEM0mmQoeZBPBy5vmZh9u+qZBdJLYgV0HA7PTfxS/eMRrhMhbvtNe
	 8EmJp4Lf7GLUlfPiYHXbnLr+E0HxZafpe90CXNKlEWvbE+rBF5XOj7YsyBHrcj3vN1
	 CnGztV7AANiHrqn1jRFa8wMHNzQXNmQTvuf/neTbUi/INYPIlINhK9iLpaX4nI++XO
	 r4srkuVVtP2Cex9RNWJDyJ5+OxxHxxHnprjIR5+bE66Dr963iZ2CDKf1XJ6tttG3UY
	 IIqs5aQW3QOlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93537CCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176080379358.9484.14086483212160987369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4484213bfc139d5d6da327266b29bf9aa8cf468692802007f570626f0f720fb4
Date: Sat, 18 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760803793
