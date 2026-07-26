Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6D222FF22
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785082834; cv=none; b=F9Cnv/hc7r/hxSeoqg8z9OShna7N9f2JUI1XwnLApqEeWllGO2M6HPt3gFLfsx7ymNJHaHYIPxAXGDOy74Cb/XTG7upwKPV56y0AhPUZDw9Xq+DK7NYI8WUlyczjtjnD0myFPWZ/3dI7rkYV12zNzwU0syFpJTI3dROePnmslFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785082834; c=relaxed/simple;
	bh=1L6P9pukx+2/DqJ/qDDGFTd8Dwe85+WqSfM1xvHl8G0=;
	h=To:Subject:From:Message-Id:Date; b=f77FrHj0L6q19tWPwlKPl8MsPdA6Yfu1EI+NIVSs3WhDA3uA33QjGrS6t+McisaebkRMQ7v6cfbPpa/wAbyB4TmwNszZCclXfPsBjJ5lVRmLwyshkAxv+eC1yp2AMnjzs/vEFwkV52owcGkTD0+lZYXhFDL/iWrIB6slcvCpyrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqY2Phya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqY2Phya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD56C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785082833;
	bh=1L6P9pukx+2/DqJ/qDDGFTd8Dwe85+WqSfM1xvHl8G0=;
	h=To:Subject:From:Date:From;
	b=cqY2PhyaYbHxcKjME4cvq3do7mJ4DuZNdtmGlzGR7yxKbS+FsRcDA+v0hiPFRy7Qo
	 3ChzZCTW9il9aG4G2ZLbqZcjbWDUs9hvIWERkImFJAcR7nHqnoXUSrna6H0GB2VSdo
	 5Pd3zBF6wN84II5ufnYmMBfxa+NZMmORQ7mTPF5J5l8BTF39CEReEZ00M7k57Vq0VK
	 jaVKlP/7MRAKm8KV8ZnBxxlsgv4h+j5XAQle2WL/8GXzgw6HuZkj47BbcPn3+sWBuz
	 l90SRkG9x5OlCZ5HJPEoYJ6k2vW/5cWk/Avqjw4mnyjM6kyFjFXUA8CI7t3jTFdULe
	 xtAjYnscuwpBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE12AC531C9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178508283368.31618.9636679987574604409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e067c32183704ab8ef14be12835b288e0ac155b7b0d2e6f719eaba063b5982
Date: Sun, 26 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785082833
