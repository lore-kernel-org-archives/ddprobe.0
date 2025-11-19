Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C502C1584
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763565114; cv=none; b=qR/mCd2pBKDlZVyln6D2F0MgPbWrfDdicZjw+tdqhe/TiI6gduKqH2KEPe5XKhGhOgLALp9LyL8QRDfq8NM5AqCFZKoOtH6sN3+Q/ajYBXPH7AJy8APHds+rwurxHLbGZQIZmPv4zKgPufm1vYKH+WC3TBN/PbeJWQvwHBW9dIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763565114; c=relaxed/simple;
	bh=ksIhvDftcKgm84g3xSGGB/IMION4+U67DU+5V/KunyI=;
	h=To:Subject:From:Message-Id:Date; b=Aw4xFI8bxPhig3KBJpR2/LwIh0iinDesW5beJF5Bdi2Q1BksoqKe1yre+6ybP5QPoV1yOQFWUQiVhPCLc8zQU0ysq0BrD8FcML+q8K++yvjKkiXSoppKTAbQchMgLCHAvzIX2VRQpSkWzM4kzGmx4ld9moKOjBDC5aAhIVGI2CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpoJYkMA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpoJYkMA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EC9C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763565113;
	bh=ksIhvDftcKgm84g3xSGGB/IMION4+U67DU+5V/KunyI=;
	h=To:Subject:From:Date:From;
	b=BpoJYkMAbyfFVUzciMznJ8bvMcM6ENGQiXbjsV2Lq6helD4hp7LHPZXHNV1OBEsn1
	 U+zkswRQ8n5L0aD+82b5XpQBSfxb4f8CavqzO/Ij4y1da6aHVScqM5VF6ohPlYU+bh
	 UtrwuQ4zXOtSlc0ps99yGLbxKb0pWDR9T8PWEctx+7vLLqHHpxDGF0FLWEcWwXMFnq
	 8iFGRDSEcBXCO5qVCJLm0OXtbG9MeBRUZJ0ajt392bp8mlBX0YI3Uz5Ti7//TjcxOB
	 shOYV2+3Kr058CB5So49R6Sq0t3mc+NVusjH4TYl4GZVDvV6NKlPEoYgF7mOm8dRqA
	 fWGZW1C78ahIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7D5CF34C9
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176356511362.18778.8522356435095853657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48187321ff5f6118c49013a086ee0a05904cde02ae6566b7ea2001fe13459d09
Date: Wed, 19 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763565113
