Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B262288F9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744790995; cv=none; b=FAB4KqnXi6XkNPVWVmZbPI/+NYn6qpxLz0k3fomIkPVJR4X2XAgtDAuyibEtCjOJYv1l6K5ec12b/70p2QO7NrPlw0AOWz+cZU4iFaOwzUVr0z6dy7YCpN7nTTscRkh9MniYrGqhSuoIX/vXXpzpxFe61d8kxwT82/S+I/g/Lj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744790995; c=relaxed/simple;
	bh=tzARCERbEozRY/QOUZmjtYHalvzPrwvRmUTskE1lsjA=;
	h=To:Subject:From:Message-Id:Date; b=dJXGxCpSx3lY6QPwZ7I6LqBOXPUE3fJ/6DITu4MbZgr6OLBsGdh2llNjwTmcMalN4+8iYrA5ehzTOmDAeqekwXyPCQXK8z5mmNd+MhyzOfaMuBt0sGVNGg3EKyOzyIfiD51reMmqRQIuhphfRs8VtsQChHi8ZTHc/ZXTIe3Z8Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RcmU6hKz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RcmU6hKz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF93C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744790993;
	bh=tzARCERbEozRY/QOUZmjtYHalvzPrwvRmUTskE1lsjA=;
	h=To:Subject:From:Date:From;
	b=RcmU6hKzdU+BwnpxWCHxTcxWtFbFyWaRagEhd0r9ovUvcfSUS9rr/0BXk65wauGVm
	 lMNJvsQkg9cn2foByK3eSVnTg1g7cDhfUhF7GCRXeyPBbTc5QE3z0lnxIXYx1Md7ZP
	 i+lY7mBF/48Q8vzcZU/057J1uxrrH3QhmKT2yJekXFu/3ZlIRA5eMAg/0IdiaxJkrP
	 kJuGLJO4FNmpDH8JIvlyIJL007rPPj96H2ahcxGmNORY8LbUXZyGPDK9Os+Exoa6B3
	 o+pvbS5TsLq6iuxuQWNyJGN1jfJFB6RpyCz+wFex+rP0TacAi8QgqSiS+iRLA3oZF3
	 a3MfvMGYHq8VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6ABC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479099362.12883.3372645560664348228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c325636670b5a136f498d21414bf781e39a028f3fbb166bd651447d988ef286a
Date: Wed, 16 Apr 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744790993
