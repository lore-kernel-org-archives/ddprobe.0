Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51538171E67
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714493543; cv=none; b=Ks96MY6mulKzPq3+QhEoiUcM/05ckF1AhoOIxZCsezwxs6wmKfTe+NE/wDrQg7uss0rvgoz9nb/paxM3i+/A3VT3s6k1aV9KJpMFET/eaKBCFSNmZEOY49tibe3I3Xah+aZb2DFhVDlAKZvttGyxq0wpUCQaH2YsbOXAobf40rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714493543; c=relaxed/simple;
	bh=r5ktdeR+E4RrBEQqSdxtwfxqkUnyjJEk9eXKlfeNW5c=;
	h=To:Subject:From:Message-Id:Date; b=ohTi3Bo+3pP/w69wjO/FVLMtDvrIQrKF3sWV3Kc6dxa9a7BhtTW0Z1KQupZQusbpUY4IK94eOZMyax9K7JG6u997hwnct+yVpVMupjwHpxmhM3tNB8eMEppGkS8SXbBG9T4lVHVaBGBa1hkRvxCr+vQamgiAD8qGQB/ob7zaPMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAllqj5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAllqj5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC75DC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714493543;
	bh=r5ktdeR+E4RrBEQqSdxtwfxqkUnyjJEk9eXKlfeNW5c=;
	h=To:Subject:From:Date:From;
	b=uAllqj5vFjqDZ8br8jRO8/bjRWkNF+F/bfpMg5KvhbuL+I7gqmTmgVyC0Hp8VsW4f
	 ErF7Gx3P5lt/R8ulMCCE6doJGPksoJe7+FvuEcKCRJnIqcyGm6tQX1F/pbL74PLhDW
	 rI7wlm3w/nneyUABMh83o/Pkg9KCxeSRVioNOLDJv5rhr/bJZ+O+NVUOA4Mv4N/yP2
	 U/6W7rrWmXeDLMld4lRIccG+kVUU0d6cSS280JYnUXkrKK3tOyoAFsUYde0Io0Inec
	 rPXBEov4LzvZ1hWb/sI+zgxIjgZIAaVuSqYgfJfKcclXYINh7+Ule7KlaqCEomW/ZU
	 qMh3GXpz9YurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C9FC4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171449354282.18522.9165512266705289525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89bf0bf4c38758373651b9874018a13f46f8f2638b0e15660150603d0849ce3
Date: Tue, 30 Apr 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714493542
