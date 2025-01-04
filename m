Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3315D12B73
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736008554; cv=none; b=oEQFOQon+F6ijqvI1DLbzLxVln1cHyg+Cp3++dVt4dljFjDt0PusoEi5VBOYOlW83JOUknHI08Olk6dGFPXyK16sSn0UEJkYi2ForEreAFkfdIgC8Y7YLJSIsmWfkbViDKmVDG7/+UzjYLDDzYcnDwly17/OkWeR4nKpJHiCCTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736008554; c=relaxed/simple;
	bh=7NDeD0Ds9t156RsCCFdC0QJ9vAcC4HmSKPuQy5SIzxc=;
	h=To:Subject:From:Message-Id:Date; b=S7Vo8p7H8DEu3KvVfLaxgtP73zTn69pu4TYjhkMDgnbU8XDeBLx9YHx6hyQyz/rKHMszX24mUl1g+U+iC6aalGSS52IcfCw7/VnDfm8M0L2v4edMF5UboIlM2mwNIDWvk9Dh74DWEhL+4xXV5rhznWrdgx+hXfDtgtASQtJ3NG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXg9dEBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXg9dEBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4335C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736008553;
	bh=7NDeD0Ds9t156RsCCFdC0QJ9vAcC4HmSKPuQy5SIzxc=;
	h=To:Subject:From:Date:From;
	b=CXg9dEBtP6aAHGuE+1PtPifMWfrOkkYLHaiNI0flIatrxRL0FOYGVGSQf5irkLv+n
	 F3Xl/KG3doVOWzmGZ2st79JsBBv77hBVsBEilGJrYBsJpiwzLJlWmaGeML4KQuFfdG
	 D4qTa3g6eOtThNJ5giD1Qm+XorhtnvdfwHx0GItcfeGX5fLYYP6NBucvu5MzS3i4dI
	 G6LnII8WwQU/qcMO4Qtuwb8U01jWZR8Bv0SpdxcqfKKmpcNOaYDHStxXv8JVFClVR2
	 Gtl3oN2ZljS5Yvb9KwVJNfG8Pj/tyq+noGmF8Q467gUcBcRoXVoACzOB195sQ6whn5
	 HzQQQmMBIxNUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D7EAE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600855363.21197.14827270326185248272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5797439ac607a273d8a858fd01f1dfe4ab07d38824ee4398541d56cf8dd3288a
Date: Sat, 04 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736008553
