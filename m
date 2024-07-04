Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F00101DB
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720062923; cv=none; b=Wwf4DPvKfdTxibciie/M4MdR7q53N59B9YuaP6CK5cGq7AczdeYziaNPRld1Vk2RvjYa1p1ck+m32Kn2MxuUdXrbyuRWkJ9BvNib+s7ciUCo2KSp7Ms6Vu2uXoCpPJLhYqI0BAL4VyfuLV/cYEenzmSbbYFfnKvFTHb2xn7nw/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720062923; c=relaxed/simple;
	bh=JExeGklL9JHxte1NJ1n2hQROg2DdvvWMbqfpZZmcCmU=;
	h=To:Subject:From:Message-Id:Date; b=kI1w9vQgwDm8iLUcVKtevKdBj/ZtsU32Hjx0iv7FQNzsWZNA0rdVCmVIDG6zYi5eWpaxUH+hCSAjUqjHTFhJ+OzVa9hWXdCHGDHtO49jCiMEUbLSrMqDgwy3rTJIktF/Y/+88eumecNYFt75pgEUkHKFbqc4+U0rrAS+RSeXGhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyKDlBJT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyKDlBJT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0BE1C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720062922;
	bh=JExeGklL9JHxte1NJ1n2hQROg2DdvvWMbqfpZZmcCmU=;
	h=To:Subject:From:Date:From;
	b=YyKDlBJTJ0yicVqG18O9mGD61NMj8IDzMKsDO+qN2/KnkDLvqRQkfYQw+GVBLTKlx
	 C07dMAPoR/EnUIofWBU7p9cSX1ATiU7M85AzsPGGXhtMZzso1IiSSbyujK8O9aBz/o
	 mUJE9v+NylUtha/WnqWqLoQGPRUrDs1aVA40CMcMs3k+XzfPOV7/4/0tQrePw59dhZ
	 L++ADxeJJPx9n2M4uRKgV5+PPmVxS6HmqErToZ051nWUowqwdoZecc6GpdhuyIBkpi
	 TZH57nvcIkqDyEGs4NYkKBdA7BDombwZYnsNcvTsvMnWaZv+PMOAPu3uFQgyLpRYnr
	 xEm4hURPM3P+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB6A5C2BD09
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 03:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172006292279.24615.17652096581657984585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5b054d6c8c0703e92a0525828bb64c1987eb17207af0acc5f32203c2e20f12
Date: Thu, 04 Jul 2024 03:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720062922
