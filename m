Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C0814AD20
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781822794; cv=none; b=IXic2qqYTrRrAZvFaHqrIke7J4xjbhyEhrOnu6ZNQ7Akafa3P9L1NgkQ+bha/UFv2psp1ZBDLetpuI20BNjryqi6JnKzJ146Che3DfQ+MC01jPDSMYTpImttoLo0Nhf9hwlnHuFYUxN4rwb8/cG8DkjBRbev62MVjVKdOoYkQl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781822794; c=relaxed/simple;
	bh=2G/tkfJuKYhM+VOB3mLqn4LiPA7LSvGhDKgGlLsz6G8=;
	h=To:Subject:From:Message-Id:Date; b=hXFTLdzK9nGcG/U36F0roMjim6ZieJkO5kNfcibzz+GAPjPRvMUuiW3LyzHXfIlXmWJsFXTDkLyLNV9gyXCzp4LeyML87S3cTI0DwXY9iMf8mzGjScHJtzMJ7MzN28ha8DU8f5YvmDcQ5qbq7gir1j2hL+GdwkhSBKgvVYD8i5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knTOmKNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knTOmKNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4169C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781822793;
	bh=2G/tkfJuKYhM+VOB3mLqn4LiPA7LSvGhDKgGlLsz6G8=;
	h=To:Subject:From:Date:From;
	b=knTOmKNJwVBD/G7Qtocm+KO2f9iDLyId9VagDr271WySV6y5LCYRPcXdW2+6X21L1
	 Zd0TgRrzZO59ADpyARwV1f/tFeUNp/tpfo6zfGM2yXeJhYLZ4YhBgwfXxPJ8J6QAUF
	 cd9nOKESH3jn5mJou8BtKE7COZ0pE9prTvuwj66nJlqlmN87rY4F0d4X1U3wE6ueQx
	 H9RMi/Y/HNl40u5MuLrucR1l1XrnQMgIb+wbqnQGaAS8LjuN5QOXmeouXnG+YGSmsZ
	 CDezn324WwHB3ZOj5O0RnRvNq72LdKRwzUBBl1MimcBkMSBXraXk0Aja1Lz+/JNvbH
	 9WLZZ8lzsxOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB005CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182279369.22903.18165434626767428360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f496d98f0a5559c50d0928161bc667cc8cc9cd3c4f276def88469b44c0f5c09
Date: Thu, 18 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781822793
