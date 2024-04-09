Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC9B76020
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712652496; cv=none; b=PxTIi9Z2om1fzTGcBHc11Iu9l4MO8KbGoyVUZ9ajp7AFcE3PZGSXf/fjapU7CmkzNNB8wZyXNcSAFpzR1Cnr+Xvx5py9KIKF37cLx1/gZk9iMcWmTFfWiD+mexURdMO2fgMYOfrE3V7HnOBaxTxquiJIbxx6kTwnI/No6BfZyn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712652496; c=relaxed/simple;
	bh=QMrF0/RCY5vnq6rweOqwPSpl2eIOPLmh5lmBHTbllf0=;
	h=To:Subject:From:Message-Id:Date; b=ZPaezfCFvNT3KpckCa7G2Xr4m2CYAP4310YnJz7qeCgeX/aHliB2tk1ZDCxdTI34tIk/k0dyoj051KF6bSRn2bB7pV1wHuszIG0jmmg4OIDXd9P8BVKjAMkIn5c9fTjm2Eph/jr6tKFCIOeUmYeBclZ2aXpStJFxCHDvFpVWxBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSsRljxj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSsRljxj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F286C43390
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712652496;
	bh=QMrF0/RCY5vnq6rweOqwPSpl2eIOPLmh5lmBHTbllf0=;
	h=To:Subject:From:Date:From;
	b=SSsRljxjaKXQa2HPCw50tTa2ux9n+WKdN8/oq9RVfWjBHain7oz0/+QKw8dEmZeQ2
	 smJCO+4ljz0f9FWEoEoxPHq9O1uOF4JYCmZGFehaNsIcE2PCRhO7C+a9jgYYHdWQxR
	 S6P8acLoF1xXMdJ6HwrPu+AdUcp3UZx1YlT3hXs+MXtj6YekZT33AglNSBxOKz2JXD
	 TFDofUjX2xTABwgWflRP/6iY4hVvH7zhT9jTMP49s1SjyRV0kPr/nm/1DzGeBdOC8i
	 CaJXfZ+hYFoFAxJT1U8JfVYgYp4EZUICAaB/F551uhkTmp1tWUuk/rlie8PEWc9mdO
	 EcF6FsAWsG4MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FB11C67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171265249637.6120.17639435477046612602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07f51781bbb12e70180ed4846ebcc5fbb7bafb401caa1642d99d7730d30ea165
Date: Tue, 09 Apr 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712652496
