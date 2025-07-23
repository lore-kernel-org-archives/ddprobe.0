Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEA3238C2A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753241394; cv=none; b=pLAvGa629fzOMXrq+UNGzLLlDouHbGDtz4SA7OESH1lmLz0l3Y259U9uUgv8UfHUc3QVA9ilg19WX7lYfgZYPgd5BnggLigzp4lOuTZuyh5uz9zbzjc71Sin9ckNoXfss63aFz0it4rLdZKeNkJK5C23XDp8fCQsCgbr/pyys1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753241394; c=relaxed/simple;
	bh=SBwzYimMMw2cQ7NLnIP/+ALm/bHq+wvxIao0Hd1sCzg=;
	h=To:Subject:From:Message-Id:Date; b=qxxp6GJX3jVsm0CN0Joxy7lylcGqgz4TlihO4vwRNhVfQYWz12bNJdP0ywCq+GuFNEljq03Ljbi6FBtu+KS/yDEmZ0hZ5thE4v3D7WJkvXonUaEqSXZ6Og1oBIFySPra+FmrZ9C3ok93goZa+cc/3tYX6cvwiqh1CbeDL+KN9dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJJN0kVV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJJN0kVV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E32FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753241393;
	bh=SBwzYimMMw2cQ7NLnIP/+ALm/bHq+wvxIao0Hd1sCzg=;
	h=To:Subject:From:Date:From;
	b=GJJN0kVVpERRI2fASUZ8zS0gryqw/LjoiERZD2LtnLL3Qp5PiVHv8tIPyeSNOgP1r
	 qiw2tQKZUz7wb1kOJcB35QwsE+7SpYg5mK/ja29K7wp3Jg5dTHhbhY9cN4A4f0S6zE
	 Sn95C+Hf8W7HWcaHlqpIHnY13cYsjC7pjDWLrBS/Su78eYeRtguLcptULBvw6n3c4W
	 9IgkalJ8JFLzxzgo8mdQPDp4Gq+Jv9E8gryYZzPSnkpkS7+oFmBUCljKTQroKlgG0o
	 wytEhxG53Ul6UMGqmm0luNjKBHg1gB3GPK1jVXgRL0LUn4noC8a1amWG0Wabe+QKX0
	 8+5r1+EwtWDOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90073C83F34
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324139358.27043.10302535037163454622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff9da85830b1769d5c12cccce70dc0bb0528534d5f1efa32ba1b036360cd236
Date: Wed, 23 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753241393
