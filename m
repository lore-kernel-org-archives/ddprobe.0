Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E92B3C73DE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783088914; cv=none; b=U8Liq7DEeQyYIJrGMeIhkAI7JnUJ/3ss25VW+/8Br/LGGXyETbbv1RipcJ1ki0a5xRSRA9ldcgtJJwk3uwTOv1nI3Tnjgiorj5PHe3q8AyvUkbVg65Umpn9ujTwvHltDFT2w8bHBKSn4s1io/YKN8IEh3NKVBNCporxC4CX8qv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783088914; c=relaxed/simple;
	bh=KHHUPAFBfLzGKfSBo34eJmY9hI7DxvlSljSgEyDfNzw=;
	h=To:Subject:From:Message-Id:Date; b=Ce9wE1/9EbFLmT43s0pJNa4o42NNY7Sw4X2DtkxzZ3iWl1x7U0FH7iT8GA69EIzCESUxMzqAGU+Nii1yiC0wSjKexCi0WWdIlhysv6MyIOLLp6M5PdXFkE//1An7GgGv7bM/weVU0pQgrRND0hWfLhNh8/wz1jIQdrJm8yuKnD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4LqjnwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4LqjnwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFAD8C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783088913;
	bh=KHHUPAFBfLzGKfSBo34eJmY9hI7DxvlSljSgEyDfNzw=;
	h=To:Subject:From:Date:From;
	b=L4LqjnwRNXpk4jWxopLbzsFRds8XAbeIrsXXofWf0VW9mTidz5ZratRDkH546a06h
	 t4dlrWMuN8ipD3GQ+Ce0/bRd3GGHdEDIjXTvOW7Z/6Pr2WFAWmYRqdNCTOrcImfC4b
	 3+5pECtAbLS23pQrVgLy7GWDXRwGEuyPbigk3J8n8/n15PYqV7K+uWsA7ZMLlW2b5R
	 6IF6rLnNMvQPoxBwFsceEFhdFREyBNsdLzmU3CaVhM4Xen4soHXUKJcZxWn2uJQUZP
	 H+Fqqg2vj7deOih1ws5xQR4r/G1kinL8k6UwZBsNZsSNxRnqXBB8OZMLjBJC9mD7GL
	 9oN/6fY1we9Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8BDC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308891369.2388.7346464504492014412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ab39ce189cb420d9aab4d40324ade738378e7b68322e622ea9518561418e50
Date: Fri, 03 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783088913
