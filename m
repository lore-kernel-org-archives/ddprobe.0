Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E962632
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747787994; cv=none; b=t2h1g5d+Gy6sQPb+3yOqsP3KJD1EmIn93qge7GzTltSVbWlMG7QOi+etrUdo4sUc0be8ZE9d7MGo+pnMNCJ2mOO6nqZwdr7CiidNE1FFqmP6CbzF9tOGnQxtD8CXtWi+JwgyxeQ059kCr/10b13o7FP5aLcfVCpVr/JjvTXetF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747787994; c=relaxed/simple;
	bh=7Fnx2iVGkqRXomUwEeBjd1VetUR5nklbFDa3mJz36ZM=;
	h=To:Subject:From:Message-Id:Date; b=BgAHbSoYwfTE+v8KXV1O3tt7klIirZiOctApMQXoQo1phh+CDySVbRmQEED3ucu+SuDUhIgLsqfjYVLYVL9FFQDACK2vZJWZKHC8apei2eJT7zF/WsmE6fxZiIY/aJK7eLOsp2DeDX5OvzBCYUNuYb5v2JTn/7pzleTZCXfbNGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ib8tdcSx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ib8tdcSx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E75C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747787993;
	bh=7Fnx2iVGkqRXomUwEeBjd1VetUR5nklbFDa3mJz36ZM=;
	h=To:Subject:From:Date:From;
	b=Ib8tdcSxdJ3Yb6Esq8qw1S3iwVUCqSrN3+Efp8jcxrYqmZsvgeIb+gFgH5l7z/dp7
	 63tX/ilKd9lOakuVLhhah9ua+GSE41MfCpGD9NAr/18jj1TiQN2bmlUalnu28CQ+PT
	 JS4RXvTD90Y6FbInwB6GOa2iZSNFjI41Bx5mdJ4tXg3cHkJq99OjD5S4u4AZ2V7B1r
	 Q5WWQno+ybO9ar104/WTrHuMx0lvkDySsAZCZuAhn2ynMGHwFUpcr4HisL7weFnCJC
	 ofqjRQtFGayvw6VcMvHYlbZiB+Ek5YqroOD31Iy5qfVIJ8FfvsR98RL/HpCe06lFjj
	 S3L9rQqOzzX/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E004C3DA6D
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778799357.3090.4697944301217424057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4e3b8c683ff9009a52eacd7e3f465892b2c1c15ed3dfb7af8d18bcba0d1986
Date: Wed, 21 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747787993
