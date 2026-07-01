Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB3A126C03
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782866914; cv=none; b=pmPsS6Yy9PzJ7dQnW9FqtE+fJdV6xXo4iZQp8uNDwlKSi6nFJsn+7p3D5ByOgPkD3dZjx6dxtN787LHm5aZ2LW7Pe4iykeLfoQrKinrGF9iW/fGNytT4yy6EsW8TGsqlmjc01RRVxC9ubhe9Q9b4VPVLAjGBIeUpcIYgaZzaU+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782866914; c=relaxed/simple;
	bh=ngHl9jJGZ9T4Gvp45gdPwZg0Ke1evfR+zsO5PZfgtPs=;
	h=To:Subject:From:Message-Id:Date; b=iX0ETzTEkB1MM4DZk735hJJnuRlFX+fKf+XTy4LIHeBxZEPDTIs7UxEipQ9FBTBPpzMifOcMD6LiQ6L91rnVk4+GXj9gMM0J0WUNK46YE6tK2V9pti3py7n2+x+m06gFBbjagcdwVUyFWmlDIFeKAdLVH/MKvFOwRG9T2pj3C6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOZCetcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOZCetcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2745C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782866913;
	bh=ngHl9jJGZ9T4Gvp45gdPwZg0Ke1evfR+zsO5PZfgtPs=;
	h=To:Subject:From:Date:From;
	b=oOZCetcqLZjtX4LGVEfiSdI3I2y1bK4uS+xaUfTdACJ8wXZs65AhknGRB6BoqusEE
	 vWqZcgePIj4QS7bP/S7LotYNeptmpJVASdjWLCrwfUBfO1sHjrwuZnfP5l/hDctMdk
	 UCf1bUyq4NGiaxX1X4iIGgPXL7aBpwmBAX1duQX4hWnV2GJw7Vc2ikr3lBqCludcqJ
	 Z1ynos9N96fkrGH8jXP6wyO8IeJEo4K2xV+vxKxBLxmuKpfUc02cIDONoVA1DOMBGD
	 abT+u72sYpoMnzcylArY/ykufdjd9mBQrNNRU3lVUYcveQPzJ+2aEuwThdvUDm1iu0
	 tgWAx779VG3Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9824C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178286691368.14006.13302220727356915453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d08c0f2c7b18172c6aadce5c97adef62573a96b6dd3db100e5b14eaa1e68e23
Date: Wed, 01 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782866913
