Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1471B1A5B9D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766402634; cv=none; b=Sldi2WTt32XWOjxAGFClfJZ/KDMN+2/fqPYYF3jwN95XKqyp9Gyqh2ou0mp8JOJ+cxDhpCmjTAKeo4S/zgHgh6ur6esBwIvmlWbTqZklJJ0gLPTqB91arypT1nfBf30ooGQ2s7LBC5oA21KrM9XRY/ZCxBSaN68lqXblWzk10+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766402634; c=relaxed/simple;
	bh=Yxpg+MEJ28NwOZxCR6YI2V65iSZiSqjjjybRLegA61I=;
	h=To:Subject:From:Message-Id:Date; b=AVvC2XN6RoxPWQY2BcPzK5lDR1BD+XPGX9zJJ8iYX37QeP1EJsf4HvpXg7cG+qU6M4SIwgj52F42wPoTk8ZiVaDK9Eb4WmHZ+DKAXAWU7/3NVODP1e9v27c87XlI3+YCflBxovZDTF3JSbj8is4Lxbl5ri9nwhPzEf4JQnywI00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ij/Dm6ZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ij/Dm6ZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE1C116C6
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766402633;
	bh=Yxpg+MEJ28NwOZxCR6YI2V65iSZiSqjjjybRLegA61I=;
	h=To:Subject:From:Date:From;
	b=ij/Dm6ZUMcg1nroFf1BOqs1/rfGPVcWNJ1SgkGm6RwBnlChbWsMb0EUJ07Upkl5dv
	 rD1BQeJRDKOAD+rYnEYAU+Nnm2Ha1KUdfhlLPigcHok9X2a2eLlQrnGLXvV83wQdKi
	 mBB9+FeOKKLr3YbQ9bd3aXsjFmNIsQ1saDlkSSO9/cqs+a5OI/KnaFNRsmXdyZcat0
	 6ABAnf4VJsOueNKiNcojbftZo9pcxCWrdMbHHnB3MhUU7wDh4OwJNW6pc3AnZDLqDW
	 OHNb7z03a2x+tXcTG53QmfnMwuFqi/4NfQ+W0SD8G3cFNu8vf+upvDn0UKiPGPrzOb
	 8JkuX4NP0DiDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BCCE67482
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640263357.8495.6434261135067427752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7098a75e92c21142eccca7b813425e45e0bc45db5bdf450831821a16791547d
Date: Mon, 22 Dec 2025 11:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766402633
