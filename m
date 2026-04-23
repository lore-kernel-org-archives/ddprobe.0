Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37D9B3AD516
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776970654; cv=none; b=sbqurW/jdV+iBLDdvMsv9rCeuYUvBuZURAQNWI9P9GXGKuWu/jaQQa5W36XQA2zwcVlgVqzRu2/hMv3rigbAHB5C1tkf6eZ9gEi+J0EfqhuyB7Zys210nx9GStT0+VIxT8SAuyZHiLDMYbdkUN6Rukc5ypZ6zQ2sSliMZl3HH4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776970654; c=relaxed/simple;
	bh=/57FBoVv97ghWm49cpFeqkWNClnkXN360JiyfNVRVOg=;
	h=To:Subject:From:Message-Id:Date; b=FN6klq9so76FvlQFqwVWEeKNrPorIjnFphm8jF84GWWQI/4gGs6Q9Im8mV8H4yG5ChDx6kmxC4CfxaT8j2TRqJpJ7riqby4eiN38O+YnDWfM8pNWMMeN6V0Db4xGbWgKgSRZeYIKQ0LZ/drKBwzQWG1nE/aL0V1QiLm9nFAXBmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOCCuEJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOCCuEJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF397C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776970653;
	bh=/57FBoVv97ghWm49cpFeqkWNClnkXN360JiyfNVRVOg=;
	h=To:Subject:From:Date:From;
	b=fOCCuEJ9w3BjiljDJmPG8E8D2ZU04FQr9I9FlNKokrgY1dn5sU4h9pZII4eZXtLoo
	 hL0FaZuCSnVR9UtAd5pXFz0glpwe5f84QSBsubbOKW3lEcRUbJYKIRK06UEY6viZb6
	 XC2fKvbvc1Z0GKVAquSj3W3IinjfW1xrVFkz4WT8XTxhu/A0nRLN+hsuoejOkiW/17
	 pvwvZrqN+6x+8Rd2C+mMQdg3Vgjd/n42FtQc3Bs+LltOXnjQ3VK6dg2etu3gaS6UtV
	 z9BL6eyDlXk+SZOS98iB5ZZ8+mwLq8iKv58wGQSJpCbA61rkY8B+gUHW+uKDSF6X9D
	 x1qy2ZjSY/dEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00DFFDEE3F
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697065368.20877.16233253074265269092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 006599d0641c74d16a2f149ccdc822d35164e5e12ac7382569e6e1f08d61475c
Date: Thu, 23 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776970653
