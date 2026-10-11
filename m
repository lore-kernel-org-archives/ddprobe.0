Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C19A42AA9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791691834; cv=none; b=OpTU8R/qCUlhZBIcKZXlvcz44GQOymVAvlB/eMuIaBuiROLwY7tK646v7FQhqJYpqDEg7cs54LAtL1hg5fI5mBIc1pbW1fdazfM9EIIv1aqyGCWOeemvkL/Qvau0pdwYe2aIFGffFlrShOj8+9zYxlPq+3HucnlssXhGGmXiB4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791691834; c=relaxed/simple;
	bh=5B6iJJTWP0ftjQGi9OGyG4usSRlqFkMhSgg9t+VX/4k=;
	h=To:Subject:From:Message-Id:Date; b=iF83lAkqgvjW4g2wAKvv96jhH9bb4pwMsjI6KG9ewAQewDGiYMUOcogMbwZlzLnICQZ0V8UZoQVU+K6XyDWOGP+C0ys5JFrnaJROfa5CLHaP6gPTuzFhZzlXXdwaAKtM4Qi9iQ8w926bo4AtzGSMGgCR6pRKln5vsQvkf4qhOaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tu5/JFhX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tu5/JFhX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5ED2C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791691833;
	bh=5B6iJJTWP0ftjQGi9OGyG4usSRlqFkMhSgg9t+VX/4k=;
	h=To:Subject:From:Date:From;
	b=Tu5/JFhXFH2fVpEC+UgEtNVEJJ5QXvq9X0z37UX+ReADtxW2Ecxy0zsUB3TcDr2b1
	 /J+xkUcM3tfu3i8B8Bv6tjh0lSgDwbKNEzeMhRBT7G3vY2KgHJXQn8ExU1g0TgwbMe
	 fLQFdo08DrpE8J8njq402vYHryQHMWPaY77vTW3WVcqoF8IzbSTIZXmrSWdGB+HrkF
	 QeqhWISMfbAB1aW47R6oEdudkcamdzmd69A6PiIHzemq0qsQunM8QBz/DOE6QjlRKS
	 H1FMe8wRjSI+G4LK1hZ3Mks0qbcKpB4b1JAguDKBdqeW3KCuXb9Oa6GIV8cNzfoyeV
	 TWJ/JlPbXnX+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE8BCA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169183368.31489.16457602912328999156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e6516cb3eb398aa90098057194784486ccfe46769e4593bf41f1ed4ca057a1c
Date: Sun, 11 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791691833
