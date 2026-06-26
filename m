Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9933CAA47
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782452854; cv=none; b=aBzWCUJVlN05ssejee/A2WPt4upAIRV9oY60dIO1Nw+LC4LwL47TZLqfyuvKssvtNPpIHPg+obZYAzyyUBLm3cJyYK4mxYfqqkIoAub39ISEzk+kvcAfszWuOKroReR9V4xHWqJXNTFilOGN+r+jZ9XGxP2T9Qzjs3Y5s4/Wifg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782452854; c=relaxed/simple;
	bh=McMwWHiDJrm1vlQIgpqfoCjHujs3ej2kMxhV+jd8BA0=;
	h=To:Subject:From:Message-Id:Date; b=F1npaPc8772ipiQrj6BKzhnjXR0kA2cCaKCXuCF5Z1hTjy4sFvnBFt/hHcBYgq1j/sJsXQdf/XOWbzHuC+emrxC4elk69zWDhMMUNeekrEpibhRcSnt3w3LYHO93bpBSEcuODy2gjt/PwEqLRv5BrKyd5qPqm5mqR2E1VlhUDeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zwv+lz+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zwv+lz+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0902C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782452853;
	bh=McMwWHiDJrm1vlQIgpqfoCjHujs3ej2kMxhV+jd8BA0=;
	h=To:Subject:From:Date:From;
	b=Zwv+lz+lXtTNQjXTIPtFmGFVlTt/RtwMSlgmnkhgcesBTuULDJBhWr1Nxhry8fchn
	 cxqNpYvThP+6kZBvLYcO687SwwTATcgN2sFHF7cagD19vvbAjPkJ4ERtKajxYuJRB1
	 qslt6F3aDXW0Ram7bBdU3m8j1AnbgWzvtQOnOFokzfqkZ6ndnLHmCm3KjBFTWDciRb
	 2IXw3HgZT8NrZ96DhRxXE2RTn8hrD7zFJ8jmLdodxG4JTKY5wo37VWNKtFI5UMrmTI
	 ztzQykdfI2dG1kKrEJe7hDb+H+D/6IMJ4S7oFSI0UAwkZ7q9OywA/wUP9yJsKdlHjd
	 UEQIg+pUa2p+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E3FCD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178245285368.4746.10784590480440924465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b941394d3bdc25d39d765f7edad4d6f96b87ca44cd72c806de7c29b45fe3f862
Date: Fri, 26 Jun 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782452853
